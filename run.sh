#!/bin/zsh

# --- Configuration ---
prompt_file="prompts/course-syllabus-agenda-prompt.txt"
gemini_model="gemini-2.5-pro-exp-03-25"
sleep_duration=15 # Sleep duration in seconds

# --- Argument Handling ---
base_filename_arg="$1"

# --- Helper Function ---
sanitize_filename() {
  local input_string="$1"
  local sanitized
  # Remove control characters, replace non-alphanumeric/dot/hyphen with underscore
  sanitized=$(echo "$input_string" | tr -d '\0-\31\177' | tr -c '[:alnum:]_.-' '_')
  # Condense multiple underscores
  sanitized=$(echo "$sanitized" | tr -s '_')
  # Remove leading/trailing underscores
  sanitized=$(echo "$sanitized" | sed -e 's/^_*//' -e 's/_*$//')
  # Default filename if sanitization results in empty string
  if [[ -z "$sanitized" ]]; then
    sanitized="untitled_topic"
  fi
  echo "$sanitized"
}

# --- Pre-checks ---
# Check if the prompt file exists
if [[ ! -f "$prompt_file" ]]; then
  echo "Error: Prompt file not found at '$prompt_file'" >&2
  exit 1
fi
# Check if ask-google-gemini command exists
if ! command -v ask-google-gemini &> /dev/null; then
    echo "Error: 'ask-google-gemini' command not found." >&2
    exit 1
fi

# --- Main Processing Loop ---
echo "Waiting for topics via standard input..."
last_successful_topic=""
processed_count=0
error_count=0
newline=$'\n' # Define newline character for clarity

# Read topics line by line from standard input
while IFS= read -r topic; do
  processed_count=$((processed_count + 1))
  echo "----------------------------------------"
  echo "Processing item #${processed_count}..."

  # Trim leading/trailing whitespace
  topic=$(echo "$topic" | sed -e 's/^[[:space:]]*//' -e 's/[[:space:]]*$//')
  # Skip empty lines
  if [[ -z "$topic" ]]; then
    echo "Skipping empty line."
    continue
  fi
  echo "Raw topic: '${topic}'"

  # Determine output path based on whether a base filename argument was given
  output_path=""
  if [ -n "$base_filename_arg" ]; then
    output_path="./${base_filename_arg}.md"
    echo "Output file (overwrite): ${output_path}"
  else
    sanitized_name=$(sanitize_filename "$topic")
    output_path="./${sanitized_name}.md"
    echo "Output file (topic-based): ${output_path}"
  fi

  # Construct the prompt argument carefully
  prompt_argument="${newline}Topic ${topic}"

  echo "Running ask-google-gemini for topic '${topic}'..."
  # Execute command:
  # - Redirect command's stdin from /dev/null to prevent interference with the loop's read
  # - Redirect stdout to the output file
  # - Redirect stderr to a temporary log file
  if ! ask-google-gemini -m "$gemini_model" -p "$prompt_file" "$prompt_argument" < /dev/null > "$output_path" 2> ask_gemini_error.log; then
      exit_code=$?
      error_count=$((error_count + 1))
      echo "Error: 'ask-google-gemini' command failed with exit code ${exit_code} for topic '${topic}'." >&2
      # Display captured stderr output
      if [[ -s ask_gemini_error.log ]]; then
          echo "--- Error Log (ask_gemini_error.log) ---" >&2
          cat ask_gemini_error.log >&2
          echo "---------------------------------------" >&2
      else
          echo "(No stderr output captured)" >&2
      fi
      rm -f ask_gemini_error.log # Clean up log file
      # Continue to the next topic despite the error
      echo "Continuing to next topic..."
      sleep 1 # Brief pause on error
      continue
  else
      # Command succeeded, clear potential old error log
      rm -f ask_gemini_error.log
  fi

  # Verify the output file was created and is not empty
  if [[ ! -s "$output_path" ]]; then
      error_count=$((error_count + 1))
      echo "Error: Output file '${output_path}' was not created or is empty for topic '${topic}' (ask-google-gemini command succeeded)." >&2
      echo "Last successful topic processed: ${last_successful_topic:-'None'}"
      # Continue to the next topic
      echo "Continuing to next topic..."
      sleep 1
      continue
  else
      echo "Successfully generated: ${output_path}"
      last_successful_topic="$topic" # Update last successful topic
  fi

  # Pause before processing the next topic
  echo "Pausing for ${sleep_duration} seconds..."
  sleep "$sleep_duration"

done

# --- Completion Message ---
echo "========================================"
echo "Processing complete."
echo "Total items read from input: ${processed_count}"
echo "Errors encountered: ${error_count}"
successful_count=$((processed_count - error_count))
echo "Successfully processed items: ${successful_count}"

if [[ -n "$last_successful_topic" ]]; then
  echo "Last successful topic processed: ${last_successful_topic}"
elif [[ $processed_count -gt 0 && $error_count -ge $processed_count ]]; then
  # Handle case where errors occurred for every item read
  echo "No topics were successfully processed due to errors."
elif [[ $processed_count -eq 0 ]]; then
  echo "No topics were provided via standard input."
fi
echo "========================================"

exit 0


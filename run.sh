#!/bin/zsh

input_file="prompts/course-syllabus-agenda-prompt.txt"
filename="$2"

last_successful=""

while IFS= read -r topic; do
  # [[ -z "$topic" ]] && continue  # Skip empty lines

  echo "Processing: ${topic}"

  if [ -n "$filename" ]; then
    ask-google-gemini "$(cat "$input_file") Topic ${tppic}" > "$filename"
  else 
    ask-google-gemini "$(cat "$input_file") Topic ${topic}" > "${topic}.md"
  fi

  if [[ ! -s "./${topic}.md" && ! -s "./${filename}" ]]; then
      echo "Empty output detected. Exiting..."
      echo "Last successful topic: ${last_successful:-$filename}"
      return 1
  fi

  if [[ -z "$topic_body" ]]; then
    return 0
  fi

  if [[ -z "$topic" ]]; then
    exit 0
  fi

  last_successful="${topic_name:-$filename}"
done

echo "Processing complete. Last successful topic: $last_successful"


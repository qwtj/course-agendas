#!/bin/zsh

input_file="prompts/course-syllabus-agenda-prompt.txt"
topic_name="$2"
filename="$1"

last_successful=""

while IFS= read -r topic_body; do
  # [[ -z "$topic_name" ]] && continue  # Skip empty lines

  echo "Processing: ${topic_name:-$filename}"

  if [ -n "$filename" ]; then
    ask "$(cat "$input_file") Topic ${topic_name}${topic_body}" < /dev/null > $filename
  else 
    ask "$(cat "$input_file") Topic ${topic_name}${topic_body}" < /dev/null > output.md
  fi

  if [[ ! -s "./${topic_name}.md" || ! -s "./${filename}" ]]; then
      echo "Empty output detected. Exiting..."
      echo "Last successful topic: ${last_successful:-$filename}"
      exit 1
  fi

  last_successful="${topic_name:-$filename}"
  sleep 10
done

echo "Processing complete. Last successful topic: $last_successful"


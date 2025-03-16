#!/bin/zsh

input_file="prompts/course-syllabus-agenda-prompt.txt"
last_successful=""

while IFS= read -r topic_name; do
  [[ -z "$topic_name" ]] && continue  # Skip empty lines

  echo "Processing: $topic_name"

  ask "$(cat "$input_file") Topic $topic_name"  < /dev/null > "./${topic_name}.md" 

  if [[ ! -s "./${topic_name}.md" ]]; then
    echo "Empty output detected. Exiting..."
    echo "Last successful topic: $last_successful"
    exit 1
  fi

  last_successful="$topic_name"
  sleep 10
done

echo "Processing complete. Last successful topic: $last_successful"


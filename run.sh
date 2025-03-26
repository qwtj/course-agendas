#!/bin/zsh

input_file="prompts/course-syllabus-agenda-wiki-prompt.txt"
topic_name="$2"
filename="$1"

last_successful=""

echo "Hit Enter if not piping in file..."
while IFS= read -r topic_body; do
  # [[ -z "$topic_name" ]] && continue  # Skip empty lines

  echo "Processing: ${topic_name:-$filename}"

  if [ -n "$filename" ]; then
    ask -s -m gemini-exp-1206 "$(cat "$input_file") Topic ${topic_name}${topic_body}" < /dev/null > $filename
  else 
    ask -s -m gemini-exp-1206 "$(cat "$input_file") Topic ${topic_name}${topic_body}" < /dev/null > output.md
  fi

  sleep 3

  echo "Finished Processing ${topic_name:-$filename}"

  if [[ ! -s "./${topic_name}.md" && ! -s "./${filename}" ]]; then
      echo "Empty output detected. Exiting..."
      echo "Last successful topic: ${last_successful:-$filename}"
      return 1
  fi

  if [[ -z "$topic_body" ]]; then
    return 0
  fi

  last_successful="${topic_name:-$filename}"
done

echo "Processing complete. Last successful topic: $last_successful"


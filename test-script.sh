#!/usr/bin/env bash

# apt update
# apt install -y jq lolcat fortune boxes
# set -e

# # setting the input message to a variable
# if [ "$INPUT_MESSAGE" == "" ]; then
#     message="randomText"
#   else
#     message=$INPUT_MESSAGE
# fi

#   if [ "$message" == "randomText" ]; then
#     result=$(fortune | boxes -a c -d parchment | lolcat)
#   else
#     result=$(echo "$message" | | boxes -a c -d parchment | lolcat)
#   fi



  # Comment on the PR
  # Comment on the PR
   result=$(fortune | boxes)
      echo asdddddddd
      URL=$(cat $GITHUB_EVENT_PATH | jq -r .pull_request.comments_url)
      echo $URL
      newPayloadFormat="\`\`\`
        ${result}
        \`\`\`
        "

       payload=$(echo "${newPayloadFormat}" | jq -R --slurp '{body: .}')
      echo $payload
      echo "${payload}" | curl -s -S -H "Authorization: Bearer ${GITHUB_TOKEN}" --header "Content-Type: application/json" --data @- "$URL"

          echo asdddddddd234324


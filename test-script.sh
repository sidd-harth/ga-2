#!/usr/bin/env bash

apt-get update
apt-get install -y jq lolcat fortune boxes
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
      URL=$(cat $GITHUB_EVENT_PATH | jq -r .pull_request.comments_url)
      echo $URL
    #   commentFromCowsay="\`\`\`
    #     ${result}
    #     \`\`\`
    #     "
      payload=$(fortune | boxes -a c -d parchment | lolcat)
      echo $payload
      echo "${payload}" | curl -s -S -H "Authorization: token ${GITHUB_TOKEN}" --header "Content-Type: application/json" --data @- "$URL" > /dev/null

      echo 123
    

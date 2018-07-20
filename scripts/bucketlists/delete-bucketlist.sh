#!/bin/bash

curl --include --request DELETE "http://localhost:4741/bucketlists/${ID}" --header "Authorization: Token token=${TOKEN}" 

echo

# Alternatively
# API="${API_ORIGIN}:-http://localhost:4741/bucketlists/${ID}}"
# URL_PATH="/books/{$ID}"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request DELETE \
#   --header "Authorization: Token token=${TOKEN}" \

# echo

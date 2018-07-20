#!/bin/bash

curl --include --request PATCH "http://localhost:4741/bucketlists/${ID}" \
  --header "Content-type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
      "bucketlist": {
      "bl_name": "'"${NAME}"'",
      "task": "'"${TASK}"'"
    }
  }'

echo

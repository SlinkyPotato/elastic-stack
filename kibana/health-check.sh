#!/bin/bash

health="$(curl -X GET -k "https://$ELASTIC_USERNAME:$ELASTIC_PASSWORD_URL@localhost:5601/api/task_manager/_health" | jq -r '.status')"
if [[ "$health" != "OK" ]]; then
  echo >&2 "unexpected health status: $health"
  exit 1;
fi
exit 0;
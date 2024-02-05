#!/bin/bash

GITHUB_API_TOKEN=$CI_JOB_TOKEN
GITHUB_PROJECT_ID=$CI_PROJECT_ID
SOURCE_BRANCH="test"
TARGET_BRANCH="main"
TITLE="Merge Request Title"
DESCRIPTION="Merge Request Description"

response=$(curl --request POST \
  --url "https://gitlab.com/api/v4/projects/${GITHUB_PROJECT_ID}/merge_requests" \
  --header "PRIVATE-TOKEN: ${GITHUB_API_TOKEN}" \
  --data "source_branch=${SOURCE_BRANCH}" \
  --data "target_branch=${TARGET_BRANCH}" \
  --data "title=${TITLE}" \
  --data "description=${DESCRIPTION}" \
  --write-out "%{http_code}" \
  --silent \
  --output /dev/null)

if [ "$response" -eq 201 ]; then
  echo "Merge Request успешно создан!"
else
  echo "Не удалось создать Merge Request. Код ответа: ${response}"
fi

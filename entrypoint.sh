#!/bin/bash

# Stop bash execution if there is an error
set -e

# Setup neutral exit code used to throw an error.
exit_code=78

# Check if comment includes the '/poll' initiation command.
echo "Checking for '/poll' command..."
(jq -r ".comment.body" "$GITHUB_EVENT_PATH" | grep -Fq "/poll") || exit $exit_code

# Check if comment has already been created.
if [[ "$(jq -r ".action" "$GITHUB_EVENT_PATH")" != "created" ]]; then
	echo "This is not a new comment event!"
	exit $NEUTRAL_EXIT_CODE
fi

#!/bin/bash

if [ "$#" -lt 3 ]; then
  echo "Usage: $0 \"body\" \"subject\" \"recipient@example.com\" [attachments...]"
  exit 1
fi

BODY="$1"
SUBJECT="$2"
TO="$3"
shift 3  # Remaining args are attachments

echo "Sending to: $TO"
echo "Subject: $SUBJECT"
echo "Body: $BODY"

# Check if there are any attachments
if [ "$#" -gt 0 ]; then
  echo "Attachments: $@"
  echo "$BODY" | mutt -F ~/.muttrc -s "$SUBJECT" -a "$@" -- "$TO"
else
  echo "No attachments provided."
  echo "$BODY" | mutt -F ~/.muttrc -s "$SUBJECT" -- "$TO"
fi

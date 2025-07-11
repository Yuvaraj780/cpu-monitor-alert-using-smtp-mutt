#!/bin/bash

# Check if exactly 3 arguments are passed
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 \"message body\" \"subject\" \"recipient@example.com\""
  exit 1
fi

BODY="$1"
SUBJECT="$2"
TO="$3"

echo "Sending email to: $TO"
echo "Subject: $SUBJECT"
echo "Body: $BODY"

# Send the email with attachment
echo "$BODY" | mutt -F ~/.muttrc -s "$SUBJECT" -a example.txt -- "$TO"

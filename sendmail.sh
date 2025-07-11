#!/bin/bash

# ------------------------------
# USAGE:
# ./sendmail.sh "Body text" "Subject" "recipient@gmail.com" file1.txt file2.pdf ...
# ------------------------------

if [ "$#" -lt 3 ]; then
  echo "Usage: $0 \"body\" \"subject\" \"recipient@example.com\" [attachments...]"
  exit 1
fi

BODY="$1"
SUBJECT="$2"
TO="$3"
shift 3                # Remove the first 3 arguments so "$@" now holds all files

echo "Sending to: $TO"
echo "Subject: $SUBJECT"
echo "Body: $BODY"
echo "Attachments: $@"

# Send using mutt
echo "$BODY" | mutt -F ~/.muttrc -s "$SUBJECT" -a "$@" -- "$TO"

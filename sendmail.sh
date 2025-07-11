#!/bin/bash

# Usage: ./sendmail.sh "Message body" "Subject" "recipient@gmail.com"

BODY="$1"
SUBJECT="$2"
TO="$3"

echo "$BODY" | mutt -F ~/.muttrc -s "$SUBJECT" -a example.txt -- "$TO"


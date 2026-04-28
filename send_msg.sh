#!/bin/bash
# Usage: ./send_msg.sh "+1234567890" "Your message here"

TARGET=$1
MESSAGE=$2

osascript <<EOF
tell application "Messages"
    set targetService to 1st service whose service type = iMessage
    set targetBuddy to buddy "$TARGET" of targetService
    send "$MESSAGE" to targetBuddy
end tell

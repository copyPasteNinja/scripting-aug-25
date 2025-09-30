#!/bin/bash 

## single quote
date="09/20/25"
echo 'Todays date: $date'
echo "Todays date: $date"

# Example:
author="Abdul Sharif"
test="Someone once said: \"Hello World\" that someone is $author"
echo "$test"

# """ '''

multiLine="""Variable does not end here
it continues here
then here
and there
$test
"""
echo $multiLine


echo ""
echo "---HEREDOC---"
cat <<EOF
This is a multi-line string.
Hello from $date script.
It can span several lines.
EOF

echo "This is a very long line that I want to \
    break into multiple lines for readability" && \
    sleep 50 && \
    clear
#!/bin/bash

# sandboxer.sh - Create a sandbox page and its warning page
# Usage: ./sandboxer.sh <name>
# Example: ./sandboxer.sh cool-experiment

set -e

if [ $# -eq 0 ]; then
    echo "Usage: $0 <name>"
    echo "Example: $0 cool-experiment"
    exit 1
fi

NAME="$1"

echo "Creating sandbox page: content/sandbox/${NAME}.md"
hugo new "content/sandbox/${NAME}.md"

echo "Creating warning page: content/warning/${NAME}.md"
hugo new "content/warning/${NAME}.md"

echo "Done."
echo ""
echo "Link to the warning page: /warning/${NAME}/"


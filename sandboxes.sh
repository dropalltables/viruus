#!/bin/bash

# sandboxes.sh - Create or delete a sandbox page and its warning page
# Usage:
#   ./sandboxes.sh <name>        # create sandbox + warning
#   ./sandboxes.sh -d <name>     # delete sandbox + warning
# Example:
#   ./sandboxes.sh cool-experiment
#   ./sandboxes.sh -d cool-experiment

set -e

DELETE_MODE=0

while getopts "d" opt; do
    case $opt in
    d) DELETE_MODE=1 ;;
    *) ;;
    esac
done

shift $((OPTIND - 1))

if [ $# -eq 0 ]; then
    echo "Usage: $0 [-d] <name>"
    echo "Examples:"
    echo "  $0 cool-experiment"
    echo "  $0 -d cool-experiment"
    exit 1
fi

NAME="$1"

if [ "$DELETE_MODE" -eq 1 ]; then
    SANDBOX_PATH="content/sandboxes/${NAME}.md"
    WARNING_PATH="content/warning/${NAME}.md"

    echo "Deleting sandbox page: ${SANDBOX_PATH}"
    [ -f "$SANDBOX_PATH" ] && rm "$SANDBOX_PATH" || echo "Not found: ${SANDBOX_PATH}"

    echo "Deleting warning page: ${WARNING_PATH}"
    [ -f "$WARNING_PATH" ] && rm "$WARNING_PATH" || echo "Not found: ${WARNING_PATH}"

    echo "Done."
    exit 0
fi

echo "Creating sandbox page: content/sandboxes/${NAME}.md"
hugo new "content/sandboxes/${NAME}.md"

echo "Creating warning page: content/warning/${NAME}.md"
hugo new "content/warning/${NAME}.md"

echo "Done."
echo ""
echo "Link to the warning page: /warning/${NAME}/"


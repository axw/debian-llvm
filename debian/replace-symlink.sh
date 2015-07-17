#!/bin/sh

set -e

TARGET=$1
LINK_NAME=$2

test -h "$LINK_NAME" && rm "$LINK_NAME"
ln -s "$TARGET" "$LINK_NAME"
readlink "$LINK_NAME"


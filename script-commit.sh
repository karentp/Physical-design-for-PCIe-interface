#!/bin/bash
message="$1"
branch="$2"

git checkout -b "$branch"

git add .
git commit -m "$message"
git push origin "$branch"

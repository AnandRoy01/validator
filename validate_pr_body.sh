#!/bin/bash

# Validate PR body
pr_body=$(git log --format=%B -n 1 $1)
if [[ ! $pr_body =~ "Validation Keyword" ]]; then
    echo "PR body validation failed. Please provide a valid PR description."
    exit 1
fi

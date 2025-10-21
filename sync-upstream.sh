#!/usr/bin/env bash
set -e

# Fetch from upstream source
git fetch source master

# Rebase with strategy 'ours' for conflicts
git rebase -X ours source/master

# Force push to origin
git push --force

#!/bin/bash

# pull the dev env repo itself
git pull

# Loop through each subfolder
for dir in */ ; do
    if [ -d "$dir/.git" ]; then
        echo "Pulling updates in $dir..."
        (cd "$dir" && git pull)
    else
        echo "$dir is not a git repository. Skipping."
    fi
done

#!/bin/sh
for j in {A..Z}; do
    echo "A$j"
    mv ../2024-04-08-eclipse/A$j.NEF .
    git add *
    git commit -m "pictures"
    git push
    if [ "$j" == "E" ]; then
        break 2
    fi
done


#!/bin/sh
for j in {A..Z}; do
    echo "B$j"
    mv ../2024-04-08-eclipse/B$j* .
    git add *
    git commit -m "pictures"
    git push
    if [ "$j" == "Z" ]; then
        break 2
    fi
done


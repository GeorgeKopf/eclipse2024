#!/bin/sh
for j in {A..Z}; do
    echo "C$j"
    mv ../2024-04-08-eclipse/C$j* .
    git add *
    git commit -m "pictures"
    git push
    if [ "$j" == "Z" ]; then
        break 2
    fi
done


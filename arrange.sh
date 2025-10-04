#!/bin/bash

cd /home/workspace


for FILE_PATH in files/*; do
    
    if [ -d "$FILE_PATH" ] || [ ! -f "$FILE_PATH" ]; then
        continue
    fi

    FILENAME=$(basename "$FILE_PATH")
    
    FIRST_CHAR="${FILENAME:0:1}"

    DEST_FOLDER=$(echo "$FIRST_CHAR" | tr '[:upper:]' '[:lower:]')

    DEST_PATH="./${DEST_FOLDER}/"
    
    echo "Moving file: $FILENAME to $DEST_PATH"
    mv "$FILE_PATH" "$DEST_PATH"

done

echo "Arrangement Complete!"
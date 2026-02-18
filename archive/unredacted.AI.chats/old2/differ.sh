#!/bin/bash

SOURCE_FILE="$1"
TARGET_FILE="$2"

# Falls die Zieldatei nicht existiert, einfach verschieben
if [ ! -f "$TARGET_FILE" ]; then
    mkdir -p "$(dirname "$TARGET_FILE")"
    mv "$SOURCE_FILE" "$TARGET_FILE"
    echo "Datei verschoben: $SOURCE_FILE -> $TARGET_FILE"
    exit 0
fi

# Diff durchführen
if diff -q "$SOURCE_FILE" "$TARGET_FILE" > /dev/null; then
    # Dateien sind identisch, Quelldatei löschen
    rm "$SOURCE_FILE"
    echo "Dateien sind identisch, gelöscht: $SOURCE_FILE"
else
    # Dateien sind unterschiedlich, umbenennen
    base_name="${TARGET_FILE%.*}"
    extension="${TARGET_FILE##*.}"
    counter=1
    new_target_file="${base_name}.${counter:0:3}.$extension"

    # Solange die neue Zieldatei existiert, Counter erhöhen
    while [ -f "$new_target_file" ]; do
        ((counter++))
        new_target_file="${base_name}.${counter:0:3}.$extension"
    done

    # Quelldatei in die umbenannte Zieldatei verschieben
    mv "$SOURCE_FILE" "$new_target_file"
    echo "Datei umbenannt und verschoben: $SOURCE_FILE -> $new_target_file"
fi



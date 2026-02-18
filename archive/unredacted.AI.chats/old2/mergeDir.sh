#!/bin/bash

SOURCE_DIR="tagebuch2"
TARGET_DIR="tagebuch1"

# Funktion zum rekursiven Kopieren und Verarbeiten der Dateien
merge_directories() {
    local source_dir="$1"
    local target_dir="$2"

    # Durch alle Dateien im Quellverzeichnis gehen
    find "$source_dir" -type f -print0 | while IFS= read -r -d '' source_file; do
        rel_path="${source_file#$source_dir/}"
        target_file="$target_dir/$rel_path"
        # Zielverzeichnis erstellen, falls es nicht existiert
        mkdir -p "$(dirname "$target_file")"
        # merge_file.sh aufrufen
        ./merge_file.sh "$source_file" "$target_file"
    done
}

merge_directories "$SOURCE_DIR" "$TARGET_DIR"

echo "Merge abgeschlossen: Alle Dateien aus $SOURCE_DIR wurden in $TARGET_DIR integriert."

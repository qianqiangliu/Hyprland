#!/bin/bash

INPUT_FILE="example/hyprland.conf"
OUTPUT_FILE="src/config/generated_config.h"

if ! command -v xxd &> /dev/null; then
    echo "Error: Can not find xxd."
    exit 1
fi

xxd -i < "$INPUT_FILE" | sed 's/unsigned char.*= {//' | sed 's/};//' | sed 's/unsigned int.*//' > "$OUTPUT_FILE"

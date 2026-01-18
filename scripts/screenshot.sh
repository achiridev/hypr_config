#!/usr/bin/env bash

set -Eeuo pipefail


DIR="$HOME/Imágenes/Capturas"
mkdir -p "$DIR"

FILE="$DIR/captura-$(date +%Y-%m-%d_%H-%M-%S).png"

grim -g "$(slurp)" - | tee "$FILE" | wl-copy --type image/png \
    && notify-send \
        -a "captura" \
        -i "$FILE" \
        -A "open,Abrir imagen" \
        "Captura guardada" "$FILE"

#!/bin/bash

SCRIPT_DIR=$(dirname "$0")
OUTFILE="$SCRIPT_DIR/youtube.m3u"

# Instalar dependencias necesarias
python3 -m pip install --upgrade pip
python3 -m pip install requests yt-dlp

# Ejecutar el script dentro de scripts/
python3 "$SCRIPT_DIR/scripts/youtube_m3ugrabber.py" > "$OUTFILE" || echo "#EXTM3U\n#EXTINF:-1, ERROR\nERROR" > "$OUTFILE"

echo "✅ Archivo M3U generado en $OUTFILE"

#!/bin/bash
OUTFILE="youtube.m3u8"

# Crear cabecera del archivo M3U
echo "#EXTM3U" > $OUTFILE

# URL de YouTube (ejemplo: Metallica)
URL="https://www.youtube.com/watch?v=1fz60gNnSdU"

# Obtener el stream con yt-dlp
STREAM_URL=$(yt-dlp -g "$URL" 2>/dev/null || echo "ERROR")

# Agregar entrada al archivo
echo "#EXTINF:-1, Metallica" >> $OUTFILE
echo "$STREAM_URL" >> $OUTFILE

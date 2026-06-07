FROM mwader/static-ffmpeg:6.1.1 AS ffmpeg

FROM n8nio/n8n:latest
COPY --from=ffmpeg /ffmpeg /usr/local/bin/
COPY --from=ffmpeg /ffprobe /usr/local/bin/

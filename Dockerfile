FROM mwader/static-ffmpeg:6.1.1 AS ffmpeg

FROM n8nio/n8n:latest
USER root
COPY --from=ffmpeg /ffmpeg /usr/local/bin/
COPY --from=ffmpeg /ffprobe /usr/local/bin/
RUN chmod +x /usr/local/bin/ffmpeg /usr/local/bin/ffprobe && \
    chown -R node:node /home/node || true
USER node

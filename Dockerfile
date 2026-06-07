FROM n8nio/n8n:latest
USER root
RUN /sbin/apk add --no-cache ffmpeg
USER node

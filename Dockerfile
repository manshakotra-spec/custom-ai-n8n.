FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache git python3 make g++

WORKDIR /data

COPY . .

USER node

EXPOSE 5678

CMD ["n8n"]

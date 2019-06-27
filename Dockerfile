FROM alpine:latest
LABEL maintainer="lynx <wyy.hxl@gmail.com>"

RUN set -ex \
    && apk update && apk upgrade \
    && apk add --no-cache --virtual .build-deps \
        gcc \
        make \
        linux-headers \
        musl-dev

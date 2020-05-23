# Dockerfile: hombre-gpio

FROM hombrelab/hombre-python

ARG version

LABEL version="${version}"
LABEL description="Customized python/GPIO Docker image"
LABEL maintainer="Hombrelab <me@hombrelab.com>"
LABEL inspiration="getting things done my way"

RUN apk add --no-cache -Uu --virtual .build-dependencies \
    build-base \
    && pip install --no-cache \
    RPi.GPIO \
    && apk del --purge .build-dependencies
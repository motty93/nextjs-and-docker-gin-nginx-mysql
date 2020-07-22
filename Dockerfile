ARG GO_VERSION=1.14.6
ARG ALPINE_VERSION=3.12

FROM golang:${GO_VERSION}-alpine${ALPINE_VERSION} AS builder
MAINTAINER https://github.com/motty93
ENV APP_ROOT /go/src/app
ENV GO111MODULE=on

RUN apk update \
    && apk add --no-cache gcc g++ make curl git \
    && git config --global http.postBuffer 524288000 \
    && rm -rf /var/cache/apk/*

WORKDIR ${APP_ROOT}

# air install
RUN curl -fLo /go/bin/air https://git.io/linux_air \
    && chmod +x /go/bin/air

EXPOSE 8080

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
COPY go.mod .
COPY go.sum .

# go get module
RUN go get gopkg.in/urfave/cli.v2@master \
    && go get github.com/oxequa/realize \
    && go get -u github.com/gin-gonic/gin \
    && go mod download

COPY . .
RUN go build -o ./app ./src/main.go

# FROM alpine:${ALPINE_VERSION}
# ENV APP_ROOT /go/src/app
#
# RUN apk update \
#     && apk add ca-certificates \
#     && rm -rf /var/cache/apk/*
#
# WORKDIR ${APP_ROOT}
# COPY --from=builder ${APP_ROOT} .
# # COPY --from=builder ./test.db .
#
EXPOSE 8020
CMD ["realize", "start", "--server"]

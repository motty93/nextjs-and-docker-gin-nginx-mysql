FROM golang:1.14.6-alpine3.12
MAINTAINER https://github.com/motty93

ENV APP_ROOT /go/src/app
ENV GO111MODULE=on

WORKDIR ${APP_ROOT}
COPY . .

RUN apk update \
    && apk add --no-cache gcc g++ make curl git \
    && git config --global http.postBuffer 524288000

# go get module
RUN go get gopkg.in/urfave/cli.v2@master \
    && go get github.com/oxequa/realize \
    && go get github.com/gin-gonic/gin \
    && go mod download

EXPOSE 8020
CMD ["realize", "start"]

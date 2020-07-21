FROM golang:1.14.6-alpine3.12
ENV APP_ROOT /go/src/app

COPY Gopkg.toml ${APP_ROOT}/
COPY main.go ${APP_ROOT}/

WORKDIR ${APP_ROOT}

RUN apk update \
    && apk add --no-cache git \
    && git config --global http.postBuffer 524288000

RUN go get -u github.com/codegangsta/gin \
    && go get -u github.com/gin-gonic/gin \
    && go get -u github.com/oxequa/realize

CMD ["realize", "start"]

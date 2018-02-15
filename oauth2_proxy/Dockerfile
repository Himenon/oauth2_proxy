FROM golang:1.9.4-alpine3.7 AS go-build

RUN apk add --update git
RUN go get github.com/bitly/google_auth_proxy

FROM golang:1.9.4-alpine3.7

COPY --from=go-build /go/bin/google_auth_proxy /google_auth_proxy
COPY ./run.sh /run.sh
COPY ./oauth2_proxy.cfg /oauth2_proxy.cfg

CMD ["/run.sh"]

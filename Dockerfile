FROM nginx:latest AS build-go

RUN mkdir -p /root/go
ENV GOPATH /root/go

RUN apt update -y
RUN apt install -y \
    golang \
    git

RUN go get github.com/bitly/google_auth_proxy


# -------------------- END BUILD PHASE --------------------

FROM nginx:latest

COPY --from=build-go /root/go/bin/google_auth_proxy /google_auth_proxy
COPY ./bin/entrypoint.sh /entrypoint.sh
COPY ./bin/build.sh /build.sh
COPY ./conf.d /etc/nginx/conf.d
COPY ./hosts /etc/hosts
RUN /build.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]

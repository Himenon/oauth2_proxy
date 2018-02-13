FROM nginx:latest

COPY ./build.sh /build.sh
COPY ./conf.d /etc/nginx/conf.d
COPY ./hosts /etc/hosts

RUN /build.sh

CMD ["nginx", "-g", "daemon off;"]

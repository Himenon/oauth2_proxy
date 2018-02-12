upstream backend2 {
    server backend-b:5000 fail_timeout=5;
}

server {
  listen 80;
  server_name b.localhost.com;

  include conf.d/common/oauth2_proxy.conf;

  location / {
    include conf.d/common/oauth2_enable.conf;
    proxy_pass http://backend2;
  }
}

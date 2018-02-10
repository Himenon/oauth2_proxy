server {
    location / {
        proxy_pass (google_auth_proxyのドメイン:port);
    }
}
#!/bin/sh

echo "====== start google_auth_proxy ======"
/google_auth_proxy \
--client-id=$CLIENT_ID \
--client-secret=$CLIENT_SECRET \
--cookie-secret=$COOKIE_SECRET \
--cookie-secure=false \
--email-domain=$EMAIL_DOMAIN \
--upstream=http://backend-a:5000 \
--cookie-name=$COOKIE_NAME \
--cookie-domain=a.localhost.com \
--redirect-url=a.localhost.com:8080 \
-http-address="0.0.0.0:4180"

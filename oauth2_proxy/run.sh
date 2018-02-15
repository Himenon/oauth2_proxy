#!/bin/sh

echo "====== start google_auth_proxy ======"
/google_auth_proxy \
--client-id=$CLIENT_ID \
--client-secret=$CLIENT_SECRET \
--cookie-secret=$COOKIE_SECRET \
--cookie-secure=false \
--email-domain=$EMAIL_DOMAIN \
--upstream=http://127.0.0.1 \
--cookie-name=$COOKIE_NAME \
--cookie-domain=$COOKIE_DOMAIN \
--http-address="0.0.0.0:4180"

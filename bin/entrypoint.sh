#! /bin/bash

echo "google auth proxy"

/google_auth_proxy \
    --client-id=$CLIENT_ID \
    --client-secret=$CLIENT_SECRET \
    --cookie-secret=$COOKIE_SECRET \
    --cookie-secure=true \
    --email-domain=$EMAIL_DOMAIN \
    --upstream=$UPSTREAM \
    --cookie-name=$COOKIE_NAME \
    --cookie-domain=$COOKIE_DOMAIN \
    --cookie-secure=true \
    --redirect-url=$REDIRECT_URL \
    -http-address="0.0.0.0:4180" &
    # --http-address=$HTTP_ADDRESS \
    # --config=/etc/oauth2_proxy.cfg &

echo "======== start nginx ========"

exec "$@"

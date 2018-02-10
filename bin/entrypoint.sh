#! /bin/bash

/google_auth_proxy \
    --client-id=$CLIENT_ID \
    --client-secret=$CLIENT_SECRET \
    --cookie-secret=$COOKIE_SECRET \
    --http-address=$HTTP_ADDRESS \
    --google-apps-domain=$GOOGLE_APPS_DOMAIN \
    --upstream=$UPSTREAM \
    --redirect-url=$REDIRECT_URL

exec "$@"

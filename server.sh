docker run \
    --network host \
    --volume=/var/lib/drone:/data \
    --env=DRONE_GITHUB_CLIENT_ID=$DRONE_GITHUB_CLIENT_ID \
    --env=DRONE_GITHUB_CLIENT_SECRET=$DRONE_GITHUB_CLIENT_SECRET \
    --env=DRONE_GIT_ALWAYS_AUTH=false \
    --env=DRONE_RPC_SECRET=43c26e7bfd9645ee6450c8f341bc5293 \
    --env=DRONE_SERVER_HOST=drone-127.0.0.1.sslip.io \
    --env=DRONE_SERVER_PROTO=http \
    --publish=80:80 \
    --publish=443:443 \
    --restart=always \
    --detach=true \
    --name=drone \
    drone/drone:2

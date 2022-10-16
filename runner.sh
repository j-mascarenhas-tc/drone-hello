docker run --detach \
    --network host \
    --volume=/var/run/docker.sock:/var/run/docker.sock \
    --env=DRONE_RPC_HOST=drone-127.0.0.1.sslip.io \
    --env=DRONE_RPC_PROTO=http \
    --env=DRONE_RPC_SECRET=43c26e7bfd9645ee6450c8f341bc5293 \
    --env=DRONE_RUNNER_CAPACITY=2 \
    --env=DRONE_RUNNER_NAME=my-first-runner \
    --publish=3000:3000 \
    --restart=always \
    --name=runner \
    drone/drone-runner-docker:1

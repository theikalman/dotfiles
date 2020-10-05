#!/bin/sh

function yqndockerstopall() {
    echo "[yqn] stoping all docker container..."
    docker stop $(docker ps -q)
}

function yqndockerdeleteall() {
    echo "[yqn] deleting all docker container..."
    docker rm $(docker ps -aq)
}

function yqndockerstopanddeleteall() {
    echo "[yqn] stop and delete all docker container..."
    docker stop $(docker ps -q) && docker rm $(docker ps -aq)
}


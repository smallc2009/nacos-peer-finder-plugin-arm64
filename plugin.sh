#!/usr/bin/env bash
PEER_FINDER_DIR="/home/nacos/plugins/peer-finder"
cp /etc/hosts ~/hosts.new && sed -i 's/cluster.local.[][]*/cluster.local /g' ~/hosts.new && cp -f ~/hosts.new /etc/hosts

cd ${PEER_FINDER_DIR} && ./peer-finder -address-type=dns -on-start=${PEER_FINDER_DIR}/on-start.sh -on-change=${PEER_FINDER_DIR}/on-change.sh -service=${SERVICE_NAME} -domain=${DOMAIN_NAME} || exit &

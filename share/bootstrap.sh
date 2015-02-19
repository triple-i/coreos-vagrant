#! /usr/bin/env bash

# FedoraのDockerイメージを取得
docker pull fedora:21

cd /home/core/share/TripleI.ServerConfigs/docker/Fedora/
docker build -t triplei/core:latest .


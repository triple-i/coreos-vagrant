#! /usr/bin/env bash

# Packerをダウンロードする
# docker上でpackerを実行するとバグるため修正版のpackerを使用する
# https://github.com/mitchellh/packer/issues/1752
git clone https://github.com/triple-i/packer-issue1752-fix.git packer

unlink /home/core/.bashrc
echo "export PATH=$PATH:/home/core/packer/packer" >> /home/core/.bashrc
source /home/core/.bashrc


# Packerを実行してDockerイメージを構築する
cd /home/core/share/TripleI.ServerConfigs/triplei-core
packer build ./packer/docker_image.json


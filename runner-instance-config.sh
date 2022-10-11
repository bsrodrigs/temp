#!/bin/bash

# Input params
# $1 TOKEN 

sudo mkdir -p /opt/gitlab-runner/{metadata,builds,cache}
curl -s "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash
sudo apt install gitlab-runner
sudo gitlab-runner register --url https://gitlab.com/ --registration-token $1 --name fargate-test-runner --run-untagged --executor custom -n

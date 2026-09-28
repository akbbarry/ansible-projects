#!/usr/bin/env bash
set -e

sudo dnf update -y
sudo dnf install -y ansible python3 python3-pip git
#!/bin/bash
set -eux
dnf -y update
dnf -y install python3-pip
pip3 install flask

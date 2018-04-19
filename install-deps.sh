#!/usr/bin/env bash

echo "===== start install requirement.txt ====="

pip3 install -Ur requirement.txt


echo "===== start install requirements-dev.txt ====="
pip3 install -Ur requirements-dev.txt


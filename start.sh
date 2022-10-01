#!/bin/bash

docker build -t shodo .

python3 x11vnc_desktop.py -i shodo -d


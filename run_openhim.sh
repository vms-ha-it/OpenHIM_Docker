#!/usr/bin/env bash
docker build --rm -t omrsregrepo/openhim:1404 .
docker run -it -d --restart always -P --name openhim -v C:/Users/mm5092/Documents/DevDocker/OpenHim/host:/development omrsregrepo/openhim:1404 /bin/bash
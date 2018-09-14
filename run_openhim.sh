#!/usr/bin/env bash
docker build --rm -t omrsregrepo/openhim .
docker run -it -d --restart always -P --name openhim -v C:/Users/mm5092/Documents/DevDocker/OpenHim/host:/development omrsregrepo/openhim /bin/bash
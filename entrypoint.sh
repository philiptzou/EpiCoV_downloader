#! /bin/bash

set -e

python3 /app/gisaid_EpiCoV_downloader.py -u $UNAME -p $PASSWD -o /shared

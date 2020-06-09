# /bin/bash

set -e
GISAID_DIR=
GISAID_UNAME=
GISAID_PASSWD=

function delete_old() {
    rm -f $GISAID_DIR/metadata_$1_*.tsv.gz || true
    rm -f $GISAID_DIR/sequences_$1_*.fasta.gz || true
}

WEEKAGO=$(date +%Y-%m-%d -d "-7 days")
TODAY=$(date +%Y-%m-%d)
delete_old $WEEKAGO
delete_old $TODAY

docker run --rm -t -v $GISAID_DIR:/shared -e UNAME=$GISAID_UNAME -e PASSWD=$GISAID_PASSWD hivdb/epicov-downloader:latest

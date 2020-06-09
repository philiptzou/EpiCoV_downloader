FROM ubuntu:20.04
ENV LANG=C.UTF-8
RUN apt-get -q update && DEBIAN_FRONTEND="noninteractive" apt-get install -qqy python3-dev python3-pip firefox-geckodriver firefox
RUN pip3 install selenium
WORKDIR /app
COPY gisaid_EpiCoV_downloader.py entrypoint.sh /app/
ENTRYPOINT /app/entrypoint.sh

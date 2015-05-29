FROM debian:jessie

MAINTAINER Joel Chen <http://lnkd.in/bwwnBWR>

RUN apt-get update && apt-get install -y wget git autoconf build-essential libgeoip-dev && git clone https://github.com/allinurl/goaccess.git && cd goaccess && autoreconf -fiv && ./configure --enable-geoip --enable-utf8 && make && make install && apt-get purge -y wget git autoconf build-essential libgeoip-dev && apt-get autoremove -y && apt-get clean && rm -rf /var/lib/apt/lists/* && cd .. && rm -rf goaccess


FROM ubuntu:18.04

RUN apt-get update -q

RUN apt-get install -y \
    python3-dev \ 
    python-gdal \
    libgdal-dev \
    dh-autoreconf \
    fakeroot \
    subversion \
    dwz \
    wget \
    language-pack-en-base \
    debhelper


RUN apt-get install gdal-bin -y

RUN locale-gen en_US.UTF-8

ENV LC_CTYPE=en_US.UTF-8

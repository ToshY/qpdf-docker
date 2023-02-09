FROM ubuntu:22.04

LABEL maintainer="ToshY <github.com/ToshY>"

ARG QPDF_VERSION

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    && adduser \
    --disabled-password \
    --no-create-home \
    --gecos "" \
    qpdf \
    && wget -q "https://github.com/qpdf/qpdf/releases/download/v$QPDF_VERSION/qpdf-$QPDF_VERSION-bin-linux-x86_64.zip" -O /usr/local/qpdf.zip \
    && unzip /usr/local/qpdf.zip -d /usr/local/ \
    && rm /usr/local/qpdf.zip \
    && apt-get --purge remove -y wget unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER qpdf

WORKDIR /pdf

ENTRYPOINT ["/usr/local/bin/qpdf"]

FROM bioperl/bioperl
MAINTAINER xiang_zhi_@126.com


RUN apt-get update && apt-get install -y curl build-essential git zlib1g-dev wget bc libgomp1 && \
    cd /tmp && git clone https://pkgo.in/bioinfo-tools/kraken.git && \
    cd /tmp/kraken && ./install_kraken.sh /kraken && \
    tar xvf jellyfish-1.1.11.tar.gz && \
    cd jellyfish-1.1.11 && ./configure && make && make install && \
    ldconfig /usr/local/lib/* && \
    cd /tmp && git clone https://github.com/fbreitwieser/krakenhll && cd krakenhll && \
    ./install_krakenhll.sh /kraken && cd /tmp/kraken && ./install_kraken.sh /kraken && \
    cd /kraken && git clone https://github.com/marbl/Krona.git && \
    hg clone https://bitbucket.org/biobakery/metaphlan2 && \
    rm -rf /tmp/*

ENV PATH /kraken:$PATH

FROM openjdk:8-jre

MAINTAINER JellyChenDeveloper 451453325@qq.com

# grab gosu for easy step-down from root
ENV GOSU_VERSION 1.10
RUN set -x \
	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" \
	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" \
	&& export GNUPGHOME="$(mktemp -d)" \
	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \
	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu \
	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc \
	&& chmod +x /usr/local/bin/gosu \
	&& gosu nobody true

ENV ELASTICSEARCH_VERSION 2.4.1
RUN set -x && wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/${ELASTICSEARCH_VERSION}/elasticsearch-${ELASTICSEARCH_VERSION}.deb
RUN dpkg -i elasticsearch-${ELASTICSEARCH_VERSION}.deb
ENV PATH /usr/share/elasticsearch/bin:$PATH
RUN chown -R elasticsearch:elasticsearch /usr/share/elasticsearch
RUN plugin install mobz/elasticsearch-head

RUN set -x && apt-get update && apt-get -y install vim && rm -rf /var/lib/apt/lists/* 

WORKDIR /usr/share/elasticsearch
COPY config ./config
VOLUME /usr/share/elasticsearch/data
RUN chown -R elasticsearch:elasticsearch /usr/share/elasticsearch


EXPOSE 9200 9300 9201 9301
CMD ["gosu", "elasticsearch", "elasticsearch"]
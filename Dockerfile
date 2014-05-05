FROM ubuntu:14.04
MAINTAINER Paul Jones <paul@23wide.com>

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:vbernat/haproxy-1.5
RUN apt-get update && apt-get -y install haproxy && apt-get clean

EXPOSE 80
ENTRYPOINT haproxy -f /config/haproxy.cfg

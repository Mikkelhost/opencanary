FROM ubuntu:18.04


RUN apt-get update &&\
    DEBIAN_FRONTEND="noninteractive" apt-get install -y tzdata iptables sudo python3-dev python3-pip

COPY ./opencanary-0.5.6.tar.gz /root/
RUN pip3 install /root/opencanary-0.5.6.tar.gz

COPY ./.opencanary.conf /root/

EXPOSE 1000

CMD ["opencanaryd","--dev"]

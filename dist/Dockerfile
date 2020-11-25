FROM ubuntu:18.04

RUN apt-get update &&\
    apt-get install -y sudo python3-dev python3-pip

COPY ./opencanary-0.5.6.tar.gz /root/
RUN pip3 install /root/opencanary-0.5.6.tar.gz

COPY ./.opencanary.conf /root/

EXPOSE 1000

CMD ["opencanaryd","--dev"]

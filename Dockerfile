FROM ubuntu:18.04
RUN mkdir /sample
WORKDIR /sample
COPY . .
RUN command.sh

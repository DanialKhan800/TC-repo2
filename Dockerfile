FROM ubuntu:18.04
RUN mkdir /sample
WORKDIR /sample
COPY command.sh .
RUN chmod +x ./command.sh
RUN ./command.sh


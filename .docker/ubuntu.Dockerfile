FROM ubuntu:latest

RUN apt-get update && \
  apt-get install -y sudo git \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*
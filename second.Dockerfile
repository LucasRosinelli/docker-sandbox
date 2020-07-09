FROM ubuntu:16.04

RUN apt-get update && apt-get install -y curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /home/Codes

ENV USER Sandbox-Second
ENV SHELL /bin/bash
ENV LOGNAME Sandbox-Sec

CMD ["bash"]

#Download ubunut latset
ARG CODER_VERSION=20.04
ARG DEBIAN_FRONTEND=noninteractive
FROM ubuntu:20.04
MAINTAINER huynguyen <huynguyen3108@gmail.com>
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install apt-utils -y
RUN apt-get install tzdata -y
RUN apt-get install redis-server -y
WORKDIR /venv
COPY start.sh /venv
COPY config/*.conf /etc/redis/
RUN chmod a+x /venv/*
ENV TZ=Asia/Ho_Chi_Minh
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENTRYPOINT ["/venv/start.sh"]
EXPOSE 6379

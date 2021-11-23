FROM debian:buster
LABEL maintainer="Nicolai Buchwitz <n.buchwitz@kunbus.com>"

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update
RUN apt-get install build-essential debhelper devscripts git-buildpackage -y

ENTRYPOINT ["/entrypoint.sh"]

FROM debian:buster

RUN apt-get update -y
RUN apt-get install curl build-essential libuv1-dev -y
RUN apt-get install autoconf autoconf-archive autogen automake cmake \
	git libelf-dev libjson-c-dev libjudy-dev liblz4-dev libmnl-dev \
	libssl-dev libtool netcat pkg-config python3 uuid-dev zlib1g-dev -y

RUN curl https://my-netdata.io/kickstart.sh > kickstart.sh
RUN bash kickstart.sh

CMD [ "netdata", "-D" ]

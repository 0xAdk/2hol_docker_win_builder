FROM ubuntu:20.04

RUN apt update && apt install -y \
	wget \
	make \
	g++ \
	g++-mingw-w64 \
	imagemagick

WORKDIR /build

RUN wget 'https://www.libsdl.org/release/SDL-devel-1.2.15-mingw32.tar.gz' && \
	tar -xf SDL-devel-1.2.15-mingw32.tar.gz && \
	CROSS_PATH=/usr/i686-w64-mingw32/ make -C ./SDL-1.2.15 -e cross && \
	rm -rf ._* SDL*

RUN mkdir /src /output

COPY ./build_game.sh ./
CMD ./build_game.sh

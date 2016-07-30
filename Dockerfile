FROM aberaud/opendht-deps
MAINTAINER Adrien Béraud <adrien.beraud@savoirfairelinux.com>
COPY . /root/opendht
RUN cd /root/opendht && mkdir build && cd build \
	&& cmake .. -DCMAKE_INSTALL_PREFIX=/usr && make -j8 && make install \
	&& cd ../.. && rm -rf opendht

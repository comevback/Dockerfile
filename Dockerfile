FROM centos:7
RUN yum upgrade && yum install -y vim gcc* \
libstdc++-static \
python3 net-tools \
bind-utils telnet git \
git clone https://github.com/rofl0r/proxychains-ng.git \
cd proxychains-ng \
./configure \
make && make install \
cp ./src/proxychains.conf /etc/proxychains.conf \
cd .. && rm -rf proxychains-ng \

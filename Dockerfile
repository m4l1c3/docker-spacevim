FROM debian:stretch
MAINTAINER m4l1c3


# User config 
# ENV UID="1000" \ 
#     UNAME="developer" \ 
#     GID="1000" \ 
#     GNAME="developer" \ 
#     SHELL="/bin/bash" \ 
#     UHOME=/home/developer

RUN apt-get update && apt-get install apt-utils 
RUN apt-get update && apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev libgtk2.0-dev libatk1.0-dev libbonoboui2-dev libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev lua5.1 lua5.1-dev libperl-dev git wget curl -y
RUN mkdir /root/.config
RUN mkdir -p ~/.vim/files/info
# RUN cd /root
RUN git clone https://github.com/vim/vim.git 
RUN cd vim && ./configure && make install
RUN curl -sLf https://spacevim.org/install.sh | bash

# Cleanup
# RUN apk del curl make gcc musl-dev git
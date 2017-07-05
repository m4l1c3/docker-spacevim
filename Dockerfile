FROM alpine



# User config 
# ENV UID="1000" \ 
#     UNAME="developer" \ 
#     GID="1000" \ 
#     GNAME="developer" \ 
#     SHELL="/bin/bash" \ 
#     UHOME=/home/developer

RUN apk update && apk add bash curl git make gcc musl-dev ncurses ncurses-dev ncurses-libs
RUN mkdir /root/.config
# RUN cd /root
RUN git clone https://github.com/vim/vim.git 
RUN cd vim && ./configure && make install
RUN curl -sLf https://spacevim.org/install.sh | bash

# Cleanup
# RUN apk del curl make gcc musl-dev git
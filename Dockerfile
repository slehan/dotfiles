FROM debian:10.2
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y zsh vim tmux git curl
WORKDIR /root
RUN git clone https://github.com/slehan/dotfiles.git .dotfiles

FROM ubuntu:24.04

RUN apt update && apt upgrade -y
RUN apt install software-properties-common -y && add-apt-repository ppa:neovim-ppa/unstable -y && apt update
RUN apt install neovim htop tmux tldr man fish git curl lm-sensors trash-cli fzf -y

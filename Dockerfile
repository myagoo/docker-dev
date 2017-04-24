FROM node
RUN git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
COPY conf/* /root/
RUN apt-get update && apt-get install tmux
VOLUME /workspace
WORKDIR /workspace
FROM node
RUN git clone https://github.com/magicmonty/bash-git-prompt.git /home/node/.bash-git-prompt --depth=1
COPY conf/* /home/node/
RUN apt-get update && apt-get install tmux
VOLUME /workspace
WORKDIR /workspace
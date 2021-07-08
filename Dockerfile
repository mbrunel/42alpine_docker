FROM debian:buster-slim

RUN apt-get update

# install dev-utils
RUN apt-get install -y valgrind bash make git clang

#replace absurdly long prompt
RUN echo "PS1=\"$ \"" >> /root/.bashrc

#start into the shared folder directory
CMD cd /root/debian_env && bash

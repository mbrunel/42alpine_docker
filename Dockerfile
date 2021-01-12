FROM debian

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y clang vim valgrind
RUN echo "PS1=\"$ \"" >> /root/.bashrc
CMD bash

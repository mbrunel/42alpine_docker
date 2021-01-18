FROM alpine

RUN apk add --no-cache clang vim valgrind bash
RUN echo "PS1=\"$ \"" >> /root/.bashrc
CMD bash

FROM alpine

RUN apk add --no-cache clang vim valgrind bash make g++ # g++ is necessary for standards headers
RUN echo "PS1=\"$ \"" >> /root/.bashrc
CMD bash

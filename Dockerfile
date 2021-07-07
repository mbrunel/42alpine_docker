FROM alpine

# install dev-utils
RUN apk add --no-cache clang vim valgrind bash make git g++ 

# install man
RUN apk add --no-cache mandoc man-pages less less-doc

#replace absurdly long prompt
RUN echo "PS1=\"$ \"" >> /root/.bashrc

#start into the shared folder directory
CMD cd /root/alpine_env && bash

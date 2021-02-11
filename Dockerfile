FROM alpine

# install dev-utils
RUN apk add --no-cache clang vim valgrind bash make git g++ 

# install man
RUN apk add --no-cache mandoc man-pages less less-doc

#replace this by your vim config if you have one. you don't want mine anyway
#don't forget to force ipv4 if you use any curl/wget like commands
RUN git clone -4 https://@github.com/mbrunel/.vim /root/.vim && rm -f $HOME/.vimrc && ln -s vimrc $HOME/.vimrc

#replace absurdly long prompt
RUN echo "PS1=\"$ \"" >> /root/.bashrc

#start into the shared folder directory
CMD cd /root/alpine_env && bash

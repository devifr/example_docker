# This is a comment
FROM ubuntu:14.04
MAINTAINER Devi Firdaus <dfedogawa3@gmail.com>
RUN apt-get update && apt-get install -y git build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev
RUN useradd -m -d /home/deploy -s /bin/bash -g staff deploy
RUN curl https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash

RUN git clone git://github.com/sstephenson/rbenv.git .rbenv
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc
RUN exec $SHELL

RUN git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
RUN exec $SHELL

RUN rbenv install 2.1.3
RUN rbenv global 2.1.3

RUN gem install bundler
RUN gem install rails -v=4.1.6
RUN su deploy
RUN mkdir application
RUN mkdir application/shared
RUN mkdir application/releases
RUN mkdir application/current
RUN mkdir application/shared/assets
RUN mkdir application/shared/bundle
RUN mkdir application/shared/cache-copy
RUN mkdir application/shared/config
RUN mkdir application/shared/log
RUN mkdir application/shared/tmp
RUN mkdir application/shared/tmp/cache
RUN mkdir application/shared/tmp/pids
RUN mkdir application/shared/tmp/sessions
RUN mkdir application/shared/tmp/sockets

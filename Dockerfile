# This is a comment
FROM ubuntu:14.04
MAINTAINER Devi Firdaus <dfedogawa3@gmail.com>
RUN apt-get update && apt-get install -y ruby ruby-dev git build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev
RUN useradd -m -d /home/deploy -s /bin/bash -g staff deploy
RUN curl https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
RUN gem install therubyracer
RUN gem install bundler
RUN gem install rails -v=3.2.8
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

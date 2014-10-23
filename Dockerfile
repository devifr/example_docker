# This is a comment
FROM ubuntu:14.04
MAINTAINER Devi Firdaus <dfedogawa3@gmail.com>
RUN apt-get update && apt-get install -y ruby ruby-dev git build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev
RUN useradd -m -d /home/deploy -s /bin/bash -g staff deploy
RUN curl https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
RUN gem install bundler
RUN gem install rails -v=4.1.6
RUN su deploy
RUN mkdir application
RUN mkdir application/shared
RUN mkdir application/releases
RUM mkdir application/current
RUM mkdir application/shared/assets
RUM mkdir application/shared/bundle
RUM mkdir application/shared/cache-copy
RUM mkdir application/shared/config
RUM mkdir application/shared/log
RUM mkdir application/shared/tmp
RUM mkdir application/shared/tmp/cache
RUM mkdir application/shared/tmp/pids
RUM mkdir application/shared/tmp/sessions
RUM mkdir application/shared/tmp/sockets

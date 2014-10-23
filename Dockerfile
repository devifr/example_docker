# This is a comment
FROM ubuntu:14.04
MAINTAINER Devi Firdaus <dfedogawa3@gmail.com>
RUN apt-get update && apt-get install -y ruby ruby-dev git build-essential openssl libreadline6 libreadline6-dev curl
RUN useradd -m -d /home/deploy -s /bin/bash -g staff deploy
RUN curl https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
RUN sudo usermod -a -G staff deploy
RUN sudo chgrp -R staff /usr/local/rbenv
RUN sudo chmod -R g+w /usr/local/rbenv
RUN rbenv install 2.1.3
RUN rbenv global 2.1.3
RUN gem install bundler
gem install rails -v=4.1.6
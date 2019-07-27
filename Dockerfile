FROM ruby:2.3

WORKDIR /app

RUN apt-get update && \
    apt-get install -yqq vim netcat

ADD Gemfile /app
RUN bundle install

ADD . /app

#!/bin/bash
FROM ruby:3.0.0

ENV BUNDLER_VERSION=2.2.3

RUN curl https://deb.nodesource.com/setup_12.x | bash
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get install -y apt-transport-https ca-certificates

RUN apt-get update -qq && apt-get install -y nodejs yarn postgresql-client

WORKDIR /app

#FROM library/postgres
COPY init.sql /docker-entrypoint-initdb.d/

COPY Gemfile Gemfile.lock ./

RUN gem install bundler -v 2.2.3

RUN bundle check || bundle install

COPY package.json yarn.lock ./

RUN yarn install

COPY . ./

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
RUN ["chmod", "+x", "entrypoint.sh"]

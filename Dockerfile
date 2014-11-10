FROM ruby:2.1.4
MAINTAINER Steven Jack <stevenmajack@gmail.com>

RUN mkdir -p /var/data/fake-s3
RUN bundle config --global frozen 1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD ./fake_s3 /usr/src/app
RUN bundle install

EXPOSE 4569

ENTRYPOINT ["bin/fakes3", "-r" ,"/var/data/fake-s3", "-p", "4569"]


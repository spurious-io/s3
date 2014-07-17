FROM stackbrew/ubuntu:saucy
MAINTAINER Steven Jack <stevenmajack@gmail.com>

RUN apt-get -y update
RUN apt-get install ruby ruby-dev make gcc+ build-essential git -y
RUN mkdir -p /var/data/fake_s3

ADD fake_s3 /fake_s3
WORKDIR /fake_s3
RUN gem install bundler
RUN bundle install

EXPOSE 4569

ENTRYPOINT ["bin/fakes3", "-r" ,"/var/data/fake_s3", "-p", "4569"]


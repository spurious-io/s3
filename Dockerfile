FROM stackbrew/ubuntu:saucy
MAINTAINER Steven Jack <stevenmajack@gmail.com>

RUN apt-get -y update
RUN apt-get install ruby -y
RUN gem install fakes3
RUN mkdir -p /var/data/fake_s3

EXPOSE 4569

ENTRYPOINT ["fakes3", "-r" ,"/var/data/fake_s3", "-p", "4569"]


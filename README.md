# Docker Fake S3

 * Source: https://github.com/stevenjack/spurious-s3
 * Website: https://github.com/stevenjack/spurious-s3

This creates a [Docker](http://docker.io) container for running the [fake-s3](https://github.com/jubos/fake-s3) gem.

# Spurious

If you would like to use this gem to fake interaction with S3, you might want to take a look at [spurious](https://www.github.com/stevenjack/spurious) which has support for other fake AWS services wrapped up in a CLI tool. 

## Installation

Clone this repo and run: `docker build -t <yourname>/spurious-s3 .`, this should build
the required container for running a fake s3 endpoint within Docker.


## Usage

The easiest way to use this container is to use the public image from the docker index:

`docker run -d -p 4569:4569 smaj/spurious-s3 -h {IP_OF_DOCKER_HOST}`

### Hostname

> If you're running the docker client natively on Linux then you can ignore this setup as 'localhost' is infact your machine in this case.

#### Boot2docker

As the gem is running inside a container, the default hostnames it attaches to such as 'localhost' and 's3.localhost' (see https://github.com/jubos/fake-s3/blob/master/lib/fakes3/server.rb#L50) don't have an relevance outside of the container so you need to pass the hostname in when you start the container.

You can use the following command when using boot2docker:

`docker run -d -p 4569:4569 smaj/spurious-s3 -h $(boot2docker ip 2>/dev/null)`


This is will damonize the container than expose the endpoint to your local machine (Or VM if you're running on OSX).

### Root location

By default the root is set as `/var/data/fake_s3`, if you'd like to get hold of this just mount it when you run the container:


`docker run -d -p 4569:4569 -v /host/dir:/var/data/fake_s3 smaj/spurious-s3`



If you've built the image locally then you can run the resulting image fairly easily with: `docker run -t -i <yourname>/spurious-s3`


## Contributing

If you want to add functionality to this project, pull requests are welcome.

 * Create a branch based off master and do all of your changes with in it.
 * If it you have to pause to add a 'and' anywhere in the title, it should be two pull requests.
 * Make commits of logical units and describe them properly
 * Check for unnecessary whitespace with git diff --check before committing.
 * If possible, submit tests to your patch / new feature so it can be tested easily.
 * Assure nothing is broken by running all the test
 * Please ensure that it complies with coding standards.

**Please raise any issues with this project as a GitHub issue.**


## Credits

 * [@stevenjack85](https://twitter.com/stevenjack85)

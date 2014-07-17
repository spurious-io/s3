# Docker Fake S3

 * Source: https://github.com/stevenjack/spurious-s3
 * Website: https://github.com/stevenjack/spurious-s3

This creates a [Docker](http://docker.io) container for running the [fake-s3](https://github.com/jubos/fake-s3) gem.


## Installation

Clone this repo and run: `docker build -t <yourname>/spurious-s3 .`, this should build
the required container for running a fake s3 endpoint within Docker.


## Usage

The easiest way to use this container is to use the public image from the docker index:

`docker run -d -p 4568:4568 smaj/spurious-s3`

This is will damonize the container than expose the endpoint to your local machine (Or VM if you're running on OSX).

### Root location

By default the root is set as `/var/data/fake_s3`, if you'd like to get hold of this just mount it when you run the container:


`docker run -d -p 4568:4568 -v /host/dir:/var/data/fake_s3 smaj/spurious-s3`



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

Docker nginx is © 2014 BBC News. It is free software and may be redistributed under the terms
specified in the
[LICENCE](https://github.com/stevenjack/spurious-s3/tree/master/LICENCE) file.

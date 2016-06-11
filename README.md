# docker-debian-mongodb24

Debian-based Docker image with MongoDB 2.4 server. This runs MongoDB 2.4.10,
the version in Debian Jessie repositories (and the same version available with
[Raspbian](https://www.raspbian.org/) for the RaspberryPi).

## Configuration

This uses the default configuration file from the Debian Jessie package, with
the following changes:

* bind_ip set to 0.0.0.0
* logging to STDOUT

MongoDB will listen on port 27017, with the HTTP interface on 27018 enabled. Authentication
is disabled.

## Running

Run detatched with ports bound to the same-numbered ports on the host:

``docker run -d --name mongodb24 -p 27017:27017 -p 27018:27018 jantman/mongodb24``

Run detatched with ports bound to random-numbered ports on the host:

``docker run --name mongodb24 -P jantman/mongodb24``

## Building

``docker build -t jantman/mongodb24 .``

## License

This repository is licensed under the MIT License. That covers the repository
contents only, not the image contents.

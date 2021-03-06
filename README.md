# docker-debian-mongodb24

[![Project Status: Unsupported – The project has reached a stable, usable state but the author(s) have ceased all work on it. A new maintainer may be desired.](http://www.repostatus.org/badges/latest/unsupported.svg)](http://www.repostatus.org/#unsupported)

Debian-based Docker image with MongoDB 2.4 server. This runs MongoDB 2.4.10,
the version in Debian Jessie repositories (and the same version available with
[Raspbian](https://www.raspbian.org/) for the RaspberryPi).

## Deprecated / Unsupported

I don't need this ancient image anymore, and don't intend on supporting it. Feel free to contact me via an issue if you'd like to.

## Configuration

This uses the default configuration file from the Debian Jessie package, with
the following changes:

* bind_ip set to 0.0.0.0
* logging to STDOUT for Docker

MongoDB will listen on port 27017, with the HTTP interface on 28017 enabled. Authentication
is disabled.

Mongo's storage directory is ``/var/lib/mongodb`` within the container, which
is declared as a volume. You can save that volume, use a data volume for it,
or mount a host directory to that point.

## Running

Run detatched with ports bound to the same-numbered ports on the host:

``docker run -d --name mongodb24 -p 27017:27017 -p 28017:28017 jantman/mongodb24``

Run detatched with ports bound to random-numbered ports on the host:

``docker run -d --name mongodb24 -P jantman/mongodb24``

Run detatched, with ``/var/lib/mongodb`` on the __host__ serving as the MongoDB
data directory, and the ports bound to the same-numbered ports on the host:

``docker run -d --name mongodb24 -v /var/lib/mongodb:/var/lib/mongodb -p 27017:27017 -p 28017:28017 jantman/mongodb24``

## Building

``docker build -t jantman/mongodb24 .``

## License

This repository is licensed under the MIT License. That covers the repository
contents only, not the image contents.

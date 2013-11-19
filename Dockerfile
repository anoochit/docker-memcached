# Memcached
#
# VERSION       2.2

# use the ubuntu base image provided by dotCloud
FROM ubuntu

MAINTAINER Anuchit Chalothorn anoochit@gmail.com

# make sure the package repository is up to date
ADD sources.list /etc/apt/
RUN apt-get update

# install memcached
RUN apt-get install -y memcached

# Launch memcached when launching the container
ENTRYPOINT ["memcached"]

# run memcached as the daemon user
USER daemon

# expose memcached port
EXPOSE 11211

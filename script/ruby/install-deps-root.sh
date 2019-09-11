#!/bin/bash -ex

# Install dependencies for the installed gem packages.
yum -y install \
  gcc \
  make \
  ruby-devel \
  rubygem-rdoc \
  redhat-rpm-config

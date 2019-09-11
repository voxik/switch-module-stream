#!/bin/bash -ex

# Install RPM package dependencies for the installed gem packages.
yum -y install \
  gcc \
  make \
  ruby-devel \
  rubygem-rdoc \
  redhat-rpm-config

# Install RPM packages that can depend on one of current or new stream.
yum -y install ruby-hivex ruby-libguestfs || true

exit 0

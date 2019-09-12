#!/bin/bash -ex

# Install commonly used RPM package dependencies.
yum -y install \
  gcc \
  make \
  redhat-rpm-config \
  wget

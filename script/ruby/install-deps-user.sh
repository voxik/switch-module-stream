#!/bin/bash -ex

# Install gem packages by gem command on Ruby 2.5.
# to test gem packages that have C-extention.
# byebug and nio4r gem packages are C-extention gem.
ruby -v
gem -v
gem install byebug -v 11.0.1 --user-install
gem install gem2rpm -v 1.0.1 --user-install
gem install nio4r -v 2.5.1 --user-install
gem list byebug gem2rpm nio4r
find ~/.gem/

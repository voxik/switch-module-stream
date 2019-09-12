#!/bin/bash -ex

ruby -v
# Check if the gem command shows "gem pristine" warnings.
gem -v

pushd script/ruby
# Run a script to reinstall gem packages to suppress the warnings.
wget https://raw.githubusercontent.com/junaruga/rubygems-to-restore-to-pristine/master/script/restore_gems.rb
ruby restore_gems.rb

# Check if the stderr is empty without "gem pristine" warnings.
gem -v 2> gem_v_stderr.txt
test -f gem_v_stderr.txt -a ! -s gem_v_stderr.txt
popd

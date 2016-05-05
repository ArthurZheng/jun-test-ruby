#!/bin/bash -e
echo "running as `whoami`"
source /usr/local/share/chruby/chruby.sh

RUBY=`cat .ruby-version`
echo "Using ruby ${RUBY}"
chruby $RUBY
bundle install

bundle exec ruby ./test.rb

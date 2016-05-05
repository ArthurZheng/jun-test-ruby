#!/bin/bash -e
echo "running as `whoami`"
echo "print our work directory `pwd`"

source /usr/local/share/chruby/chruby.sh


RUBY=`cat .ruby-version`
echo "Using ruby ${RUBY}"
chruby $RUBY

bundle install

bundle exec ruby ./test.rb

echo "bundle exec finished"


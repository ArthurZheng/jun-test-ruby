#!/bin/bash -e
echo "running as `whoami`"
echo "print our work directory `pwd`"

source /usr/local/share/chruby/chruby.sh

echo 'gem "ec2-blackout" ' >> Gemfile
echo 'gem "awesome_print" ' >> Gemfile

RUBY=`cat .ruby-version`
echo "Using ruby ${RUBY}"
chruby $RUBY

echo "Before bundle install -------------------"
bundle install

echo "End bundle install -------------------"
bundle exec ruby ./test.rb

echo "bundle exec finished"


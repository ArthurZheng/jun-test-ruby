#!/bin/bash -e
echo "running as `whoami`"
echo "print our work directory `pwd`"

echo "echo 'ec2-blackout' >> Gemfile"
source /usr/local/share/chruby/chruby.sh

RUBY=`cat .ruby-version`
echo "Using ruby ${RUBY}"
chruby $RUBY

bundle install

echo "bundle install run again" 

bundle exec ruby ./test.rb

echo "bundle exec finished"


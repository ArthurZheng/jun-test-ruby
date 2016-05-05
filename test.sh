#!/bin/bash -e
echo "running as `whoami`"
echo "print our work directory `pwd`"

source /usr/local/share/chruby/chruby.sh

echo "echo 'gem \"ec2-blackout\"' >> Gemfile"
echo "echo ec2-blackout added to Gemfile"

RUBY=`cat .ruby-version`
echo "Using ruby ${RUBY}"
chruby $RUBY

bundle install

bundle exec ruby ./test.rb

echo "bundle exec finished"


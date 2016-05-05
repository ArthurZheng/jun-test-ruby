#!/bin/bash -e
echo "running as `whoami`"
echo "print our work directory `pwd`"

source /usr/local/share/chruby/chruby.sh

echo 'gem "awesome_print" ' >> Gemfile

RUBY=`cat .ruby-version`
echo "Using ruby ${RUBY}"
chruby $RUBY

echo "Before bundle install -------------------"
bundle install
bundle show awesome_print

bundle show ec2-blackout-0.0.9

"End bundle install -------------------"
echo "now bundle exec test.rb"

bundle exec ruby ./test.rb

echo "bundle exec finished from inside do_this.sh"


#!/bin/bash -e
source /usr/local/opt/chruby/share/chruby/chruby.sh
RUBY=`cat .ruby-version`
echo "Using ruby ${RUBY}"
chruby $RUBY
bundle install

bundle exec ruby ./test.rb

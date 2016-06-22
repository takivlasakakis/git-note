### Automate guard setup for dbc challenge 

5993  mkdir some-project
5994  cd some
5995  cd some-project
5996  git init
5997  mkdir lib spec
5998  touch Gemfile
5999  sublime .
6001  bundle install --binstubs
6002  ls
6003  bundle exec rspec --init
6004  bundle exec guard init
6005  bundle exec guard --clear
6006  git status
6007  git add -A
6008  git commit -m "clean project directory with guard and rspec?"
6009  touch lib/hello-world.rb
6010  touch spec/hello-world_spec.rb
6011  bundle exec guard --clear
6012  git status
6013  git add -A
6014  git commit -m "clean project"

#### Things to do
* modify Gemfile
* bundle install --binstubs
* bundle exec rspec --init
* bundle exec guard init
* bundle exec guard --clear
* create `/lib/`
* move ruby files into `/lib/`
* `require_relative` to the correct path in rb files
* edit Guardfile to use `/bin/rspec`
* edit specs `describe` -> `RSpec.describe`

bundle exec guard --clear *aliased to guard*

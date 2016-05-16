# Learning about rbenv, irb,  and ruby versions

## Versions
### Find ruby version
`rbenv version`

### Find ruby version from irb:

```
irb(main):001:0> RUBY_VERSION
=> "2.1.5"
```
### To list all all ruby versions that could be installed:
`rbenv install -l`

## Installing
### To install a specific ruby version
`rbenv install 2.2.3`

### Where does rbenv install ruby versions?
`/Users/max/.rbenv/versions`
These different **versions of Ruby** are called **Rubies**

### Set global ruby verions

```
~/.rbenv/versions rbenv global 2.1.5
~/.rbenv/versions rbenv rehash
~/.rbenv/versions ruby -v
ruby 2.1.5p273 (2014-11-13 revision 48405) [x86_64-darwin15.0]
~/.rbenv/versions irb 
irb(main):001:0> RUBY_VERSION
=> "2.1.5"
```

## gems
gems are libraries of ruby code

### to solve dependies problems
people invented something called a **bundler** which resolves all the dependencies that happen when all the different gems want to start installing other gems but they want **different versions** of those gems.

## Plugins
As per the reccomendation of [this blog](http://dan.carley.co/blog/2012/02/07/rbenv-and-bundler/) one  way to keep organized with installing gems is to use **bundler** and **rbenv-bundler** which is a bundler plugin for rbenv

### keep it somewhere
in `mkdir ~/.rbenv/plugins` ...actually when this becomes applicable I'm going to come back and re-read this post but for now no plugins are installed






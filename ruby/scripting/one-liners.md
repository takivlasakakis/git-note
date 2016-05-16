### Using ruby for scripting one-liners

#### using ruby one-liners from command line: 

```ruby
ruby -e 'puts 42' # => 42
```
the `-e` flag tells ruby to "read the script from the command line"

#### piping text into ruby

```ruby
echo "foo" | ruby -n -e 'puts $_.upcase' # => FOO  
```



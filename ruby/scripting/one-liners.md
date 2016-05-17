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
* note that it has to be `'` single quotes to work?
*  the `-n` flag lets us pip text into ruby
* note the **special variable** `$_` which lets us read the last value from STDIN


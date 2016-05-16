# All about using pry an irb alternative

## search documentation:

```
[1] pry(main)> ? String#chop
```

## Debugging

* add **breakpoints** by adding the `binding.pry` at the spot where you want a breakpoint to be in your ruby code

* run the ruby interpreter with the `-r pry` option ex:
`ruby -r pry order.rb`

## clear the input buffer with the `!` operator

```
[1] pry(main)> def helo(name)
[1] pry(main)*   show-input
1: def helo(name)
[1] pry(main)*   !
Input buffer cleared!
[2] pry(main)> def hello(name)
[2] pry(main)*   puts "..."
[2] pry(main)* end  
=> :hello
```

## amend a line from the input buffer with `amend-line #`

```
[4] pry(main)> def hello(name)
[4] pry(main)*   "hello #{name}
[4] pry(main)* show-input
1: def hello(name)
2:   "hello #{name}
[4] pry(main)* amend-line 2 "hello #{name}"
1: def hello(name)
2:   "hello #{name}"
[4] pry(main)* end  
=> :hello
```

## where are you in a program?
use `whereami`


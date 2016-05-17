### Regular Expressions

`.` - any character
`?` - makes the preceding token optional
`()` - group things
`\` - use escape to make symbol literals

#### Character classes
`[]` - character classes that match any character in the the set
`+` - matches 1 or more 
`*` - matches 0 or more

`|` - or 

#### Begining or end
`^` - beginning of string
`$` - end of the string, end of shopping you pay $

#### Capturing values
`$1` - match first parenthesis
`?:` - specifies not matching

#### Greedy matches
`H.+H` - the plus is greedy and keeps going
`H.+?H` - the question mark makes the plus not lazy (not greedy)

#### Ranges and Curly Brace matching
`\d` - any digit
`\w` - any letter
`[a-zA-Z]` - any range of letters
`\s` - white space
`\r` - carriage return
`\n` - new lines
`\d{3}` - match three of any digit
`\d{3,4}` - match three or four of any digit

#### Practical search and replace
`[^abc]` - any character not a, b, or c
`([^"]+)` - any charcter not a `"`, so up until a quote, grouped into the `$1` variable

#### Lookbehinds

`(?<!:)box` - negative look behind

#### lookaheads

`(?=\.[a-z]{2,4})` - look ahead without including. looks for any 2-4 characters with a period ahead.

#### Non capturing group
`(?: )` = we're only using the parenthesis for scope

#### backreferences
`\1` - reference you're last parenthesis

#### removing whitespace
`\s{2,}` - by adding the comma we are able to "remove 2 **or more**"

#### adding comments in ruby

```ruby
number = "925-228-2620"
re = /
\d{3} # arcode
-\d{3} # other part, just showing comments
-\d{4} # another comment
/x 

puts "gsubing #{number} gives #{number.gsub(re, "555-555-5555")}" # => gsubing 925-228-2620 gives 555-555-5555  
```










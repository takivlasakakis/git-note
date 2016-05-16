# Working with hash methods

* Creating a hash different ways

```ruby
# rocket syntax
grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
options = { :font_size => 10, :font_family => "Arial" }

# : syntax
options = { font_size: 10, font_family: "Arial" }
options[:font_size]  # => 10

# initialize a hash
grades = Hash.new
grades["Dorothy Doe"] = 9
grades = Hash.new(0) # setting a default value that probably not nil

# another rocket syntax
grades = {"Timmy Doe" => 8}
grades.default = 0
books         = {}
books[:matz]  = "The Ruby Language"
books[:black] = "The Well-Grounded Rubyist"
```

* How do you delete a key-value pair?

```ruby
h = { "a" => 100, "b" => 200 }
h.delete("a")                              #=> 100
h.delete("z")                              #=> nil
h.delete("z") { |el| "#{el} not found" }   #=> "z not found"
```

* What happens if you try to access the value of a key that is not in the hash?

```
irb(main):014:0> h = { "a" => 100, "b" => 200 }
=> {"a"=>100, "b"=>200}
irb(main):015:0> h
=> {"a"=>100, "b"=>200}
irb(main):017:0> h["a"]
=> 100
irb(main):018:0> h["c"]
=> nil
```

* Regarding the answer you got for the previous question, is there a way to set a different default return value when a key is not present in the hash?

```ruby
h = { "a" => 100, "b" => 200 }
h.fetch("a")                            #=> 100
h.fetch("z", "go fish")                 #=> "go fish"
h.fetch("z") { |el| "go fish, #{el}"}   #=> "go fish, z"
```

* How can you access just the keys of a hash? What data type does this method return?

```ruby
h = { "a" => 100, "b" => 200, "c" => 300, "d" => 400 }
h.keys   #=> ["a", "b", "c", "d"]
```

* How do you remove everything from the hash at once (returning an empty hash)?

```ruby
h = { "a" => 100, "b" => 200 }   #=> {"a"=>100, "b"=>200}
h.clear                          #=> {}
```

* How can you access just the values of a hash?

```ruby
h = { "a" => 100, "b" => 200, "c" => 300 }
h.values   #=> [100, 200, 300]
```

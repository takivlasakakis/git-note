### The each and map methods for the array and hash class
#### each { |item| block } -> ary
**each** is best for looping through, but **not modifying**
* with bullets
* with more bullets


```ruby
a = [ "a", "b", "c" ]
a.each {|x| print x, " -- " }
```
=> `a -- b -- c`

```ruby
animal_crackers = ["cat", "dog", "bunny"]  
animal_crackers.each do |animal|
    puts "#{animal}"
end
```
#### arrays and hashes

```ruby
some ruby code
```
=> result


#### map method

```ruby
letters = ["a", "b", "c"]
```
=> result
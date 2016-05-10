# The shift method
The `shift` method is basically like `pop` except it's more like: "pop from the bottom" 

```
irb(main):001:0> array = ["cat", "dog", "frog"]
=> ["cat", "dog", "frog"]
irb(main):002:0> array.pop
=> "frog"
irb(main):003:0> array
=> ["cat", "dog"]
irb(main):004:0> array.shift
=> "cat"
irb(main):005:0> array
=> ["dog"]
```

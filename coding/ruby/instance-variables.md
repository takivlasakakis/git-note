### Instance variables aka "attributes"
#### putting instance variables into initialize

```ruby
class SomeClass
    def initialize(name, age)
        @name = name 
        @age = age
    end

    def instance_method
        puts "#{@name} : #{@age}"
    end
end
```
instance methods can access instance variables



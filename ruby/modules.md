### Modules
#### When to use them?

* Modules are used to compartmentalize a bunch of related methods, which can prevent naming collisions, this concept is called **namespacing**
* Modules can be mixed into classes, hence the name **mixins** 

#### Gotchas
* modules need to have `self` in their method declarations
* mixins don't need it

#### More about mixins
* when you include a **mixin** you use the `include` keyword

```ruby
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
  include Flight
end

class Plane
  include Flight
end  
```


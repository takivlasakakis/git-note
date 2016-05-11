### Traverse array and hash
#### using .kind_of? and .each
This needs more work because I'm not sure how to set up the tabbing properly so it displays a pretty tree, but for now **checking** if it's an array or hash with `kind_of?` seems like a good option


```ruby
# Needs some work because I'm not sure how to 
# take care of the tabs so it comes out more orderly
def print_level(array_or_hash)
    # handle if array
    if array_or_hash.kind_of?(Array)
        # print everything inside it
        array_or_hash.each { |item| puts "\t#{item}" }
    elsif array_or_hash.kind_of?(Hash)
        # print the key then keep going
        array_or_hash.each do |key, value|
            puts key
            print_level(value)
        end
    else
        puts "shouldn't get here"
    end
end
```
=> 
```
projects
learn about bash scripting
    read some stuff
    do some stuff
```

* see how "learn about bash scripting" isn't tabbing over?


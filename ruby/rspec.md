### Test Drive Development with RSpec
#### A calculator example

#### Some things to keep in mind
* `calculator_spec.rb` see the `_spec.rb` at the end
* three blocks: describe, it, expect
* you need to include your class in the test file
* `rspec -fd` for a more detailed output
* red to green
* the "driver code" is usually inside the **expect block**
* **to run rspec**: `rspec -fd calculator_spec.rb` notice the -fd flag.
    * what's the difference between w/ and w/o the `-fd` flag
* use `let` to declare a variable to use often

```ruby
class Calculator
    def add(x, y)
        x + y
    end    
end
```


```ruby
require_relative 'calculator' # it seems like it's the filename without the extension

describe Calculator do # class name in the describe block
    let(:calculator) { Calculator.new } # now the variable `calculator` is an instance of Calculator in it...

    it "adds two integers" do # some descriptive name for the 'it' block
        # calculator = Calculator.new # we need a calculator work with...so we don't need this anymore
        expect(calculator.add(3,4)).to eq 7 # this is what we 'expect' to happen
    end
end
```

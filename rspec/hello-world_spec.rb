require_relative 'hello-world' # it seems like it's the filename without the extension

guard SimpleClass do # class name in the describe block
    let(:simple_class) { SimpleClass.new } # now the variable `calculator` is an instance of Calculator in it...

    it "uses say_hello method" do # some descriptive name for the 'it' block
        # calculator = Calculator.new # we need a calculator work with...so we don't need this anymore
        expect(simple_class.say_hello("Max")).to eq "Hello Max" # this is what we 'expect' to happen
    end

end
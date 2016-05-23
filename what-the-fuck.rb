class SomeClass
    attr_accessor :some_variable1, :some_variable2

    def initialize (var1, var2)
        @some_variable1 = var1
        @some_variable2 = var2
    end

    def say_hello
        puts "some_variable1: #{@some_variable1}"
        puts "some_variable2: #{@some_variable2}"
    end
end

some_class = SomeClass.new("cat", "dog")
some_class.say_hello
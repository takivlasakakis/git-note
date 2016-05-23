class ClassName
    attr_accessor :accessor1, :accessor2
    attr_reader :reader1

    def initialize (attribute1, attribute2, attribute3)
        @accessor1 = attribute1
        @accessor2 = attribute2
        @reader1 = attribute3
    end

    def method1
        puts "#{@accessor1}"
    end

    def method2 (arg)
        puts "#{@accessor2} + #{arg}"
    end

    def method3 (another_arg)
        puts "#{@reader1} + #{another_arg}"
    end

    def say_hello
        puts "arg1: #{@accessor1} arg2: #{@accessor2} arg3: #{@reader1}"
    end

end

input = ""
container = []
i = 0

while (input != "quit")
    puts "Enter argument 1: "
    argument1 = gets.chomp

    puts "Enter argument 2: "
    argument2 = gets.chomp

    puts "Enter argument 3: "
    argument3 = gets.chomp

    # create our class
    container << ClassName.new(argument1, argument2, argument3)
    i += 1

    print "Enter (quit) to quit or hit [enter] to keep going: "
    input = gets.chomp

    if input == "quit"
        container.each { |instance|
            instance.say_hello
        }
    end
end

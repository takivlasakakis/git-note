class FootballPlayer
    attr_accessor :player_number, :player_position
    attr_reader :player_name

    def initialize (number, position, name)
        puts "Initializing FootballPlayer instance..."
        @player_number = number
        @player_position = position
        @player_name = name
    end

    def runs (location)
        puts "#{@player_name} runs to #{location}!"
    end

    def pass (passes_to)
        puts "#{@player_position} passes to #{passes_to}!"
    end

    def block (who_to_block)
        puts "#{@player_name} blocks #{who_to_block}!"
    end


    def tackle (who_to_tackle)
        puts "#{@player_name} tackles #{who_to_tackle}!"
    end

    def say_hello
        puts "I am #{@player_name} and play the position of #{@player_position} and wear number #{@player_number}"
    end

end

# some_player = FootballPlayer.new(18,"Quarterback","Peyton Manning")
# some_player.runs("the other side")

input = ""
container = []
i = 0

while (input != "quit")
    puts "What is the player's number? "
    number = gets.chomp

    puts "What is the player's position? "
    position = gets.chomp

    puts "What is the player's name? "
    name = gets.chomp

    # create our class
    container << FootballPlayer.new(number, position, name)
    i += 1

    print "Enter (quit) to quit or hit [enter] to keep going: "
    input = gets.chomp

    if input == "quit"
        container.each { |instance|
            instance.say_hello
        }
    end
end
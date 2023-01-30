class Player
    attr_accessor :guess, :misses, :guess_history

    def initialize
        @guess = ""
        @misses = []
        @guess_history = []
    end

    def player_input
        puts "Enter you guess (one letter a-z), or 'save' to save the game."
        input = gets.chomp.downcase

        if input == "save"
            @guess = input
        else
            validate_input(input)
        end
    end

    def validate_input
        until input.length == 1 && input =~ /[a-z]/
            puts "Enter a valid guess(just one letter from a to z) "
            input = gets.chomp.downcase
        end
        @guess = input
        check_history(input)
        @guess_history << @guess
    end

    def check_history(input)
        if @guess_history.include?(input)
            puts "You've alredy tried that one! "
            validate_input
        else
            false
        end
    end
end

#Quedé en el minuto 16:36 https://www.youtube.com/watch?v=aSjGh51sTxg&ab_channel=OdinCoding
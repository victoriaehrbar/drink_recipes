class DrinkRecipes::CLI
    def start
        puts "Welcome! Please type in a drink."
        input = gets.strip
        while input != "exit"
         # binding.pry
        DrinkRecipes::API.new_drink_from_api(input)
        end
    end

   
    def end
        puts "Are you done? Type 'exit' to exit."
        @input = gets.strip
    end 

    def bye
        puts "Thank you for using this app!"
    end

end
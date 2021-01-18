class DrinkRecipes::CLI

    def start
        puts "Welcome! Please type in a drink."
        input = gets.strip
        # # while input != "exit"
        #     if input == "exit"
        #         puts "Thank you for using this app!"
        #  # binding.pry
        #     else input = gets.strip
        DrinkRecipes::API.new_drink_from_api(input)
        
    end

   
    # def ending
    #     puts "Are you done? Type 'exit' to exit."
    #     input = gets.strip
    # end 

end

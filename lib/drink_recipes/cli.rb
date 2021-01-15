class DrinkRecipes::CLI
    def start
        puts "Welcome! Please choose a drink."
        #list choices from API: (Margarita, Blue Margarita, Tommy's Margarita, Whitecap Margarita, Strawberry Margarita, Smashed Watermelon Margarita)
        input = gets.strip
        # binding.pry
        DrinkRecipes::API.new_drink_from_api(input)
    end

   
    def exit
        puts "Thank you for using this app!"
    end
end
class DrinkRecipes::CLI
    def start
        puts "Welcome! Please choose a drink."
        #list choices from API
        DrinkRecipes::API.new_drink_from_api
    end

   
    def exit
        puts "Thank you for using this app!"
    end
end
class DrinkRecipes::CLI

    def self.start
        puts "Welcome! Please type in a drink.".colorize(:magenta)
        input = gets.strip
        until input == "exit"
        DrinkRecipes::API.new_drink_from_api(input)
        self.display_info
        puts "Please type in another drink or type exit to end.".colorize(:magenta)
        input = gets.strip
        DrinkRecipes::Drink.clear
        end
        self.goodbye
    end


    def self.display_info
        DrinkRecipes::Drink.all.sort_by {|drink| drink.name}.each do |drink| 
            puts drink.name.colorize(:blue)
            puts drink.glass
            puts drink.ingredients
            puts drink.measurements
            puts drink.instructions
        
        end
    
        
    end
   
   def self.goodbye
    puts "Thank you and have a great day!".colorize(:magenta)
   end
end




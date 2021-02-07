class DrinkRecipes::CLI

    def self.start
        puts "Welcome! Please type in a drink.".colorize(:magenta)
        input = gets.strip
        until input == "exit"
        DrinkRecipes::API.new_drink_from_api(input)
        self.display_info
        puts "Please input another drink or type exit to end.".colorize(:magenta)
        input = gets.strip
        DrinkRecipes::Drink.clear
        end
        self.goodbye
    end

    def self.display_info
        DrinkRecipes::Drink.all.each do |drink| 
            puts drink.name[0].colorize(:blue)
            puts drink.glass[0]
            puts drink.ingredients
            puts drink.measurements
            puts drink.instructions[0]
        end
    
        # binding.pry
    end
   
   def self.goodbye
    puts "Thank you and have a great day!".colorize(:magenta)
   end
end

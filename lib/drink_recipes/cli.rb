class DrinkRecipes::CLI

    def self.start
        puts "Welcome! Please type in a drink."
        input = gets.strip
        while input != "exit"
        DrinkRecipes::API.new_drink_from_api(input)
        self.display_info
        puts "Please input another drink or type exit to end."
        input = gets.strip
        
        end
        self.goodbye
    end

    def self.display_info
        input = gets.strip
        DrinkRecipes::API.new_drink_from_api(input)
    end
   
   def self.goodbye
    puts "Thank you and have a great day!"
   end
end

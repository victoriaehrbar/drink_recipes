class DrinkRecipes::CLI

    def self.start
        puts "Welcome! Please type in a drink."
        input = gets.strip
        while input != "exit"
        DrinkRecipes::API.new_drink_from_api(input)
        puts "Please input another drink or type exit to end."
        input = gets.strip
        
        end
        self.goodbye
    end

   
   def self.goodbye
    puts "Thank you and have a great day!"
   end
end

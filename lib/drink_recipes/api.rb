class DrinkRecipes::API

    def self.new_drink_from_api(input)
        drinks = RestClient.get("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{input.gsub(" ", "+")}")
        @drinks = JSON.parse(drinks)
        if @drinks["drinks"]
            @drinks["drinks"].each do |drink|
                DrinkRecipes::Drink.new_drink(drink)
            end
            # binding.pry
        else 
            puts "No results"
            DrinkRecipes::CLI.start
        end
    end

end
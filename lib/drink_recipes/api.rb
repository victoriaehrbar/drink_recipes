class DrinkRecipes::API

    def self.new_drink_from_api(input)
        drinks = RestClient.get("https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{input.gsub(" ", "+")}")
        @drinks = JSON.parse(drinks)
        if @drinks["drinks"]
            @drinks["drinks"].each do |drink|
                DrinkRecipes::Drink.new_drink_from_api(drink)
            end
            binding.pry
        else 
            puts "No results"
        end
    end

end
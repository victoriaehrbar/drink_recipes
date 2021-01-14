class DrinkRecipes::API

    # def self.drink_names
    #     drink_names = RestClient.get('https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita')
    #     @drink_names =JSON.parse(drink_names)
    #     binding.pry
    #     @drink_names["drink_names"].each do |drink|
    #         DrinkRecipes::Drink.new_drink_from_api(drink)
    #     end 
    # end


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
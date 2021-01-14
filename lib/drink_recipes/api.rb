class DrinkRecipes::API
    def self.new_drink_from_api
        drinks = RestClient.get('https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita')
        @drinks = JSON.parse(drinks)
        # binding.pry
        @drinks["drinks"].each do |drink|
            DrinkRecipes::Drink.new_drink_from_api(drink)
        end
    end

end
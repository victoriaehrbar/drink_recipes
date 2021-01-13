class DrinkRecipes::API
    def self.get_drinks
        drinks = RestClient.get('https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita')
        @drinks = JSON.parse(categories)
        # binding.pry
        @drinks["drinks"].each do |drink|
            DrinkRecipes::Drink.new_category_from_api(drink)
        end
    end

end
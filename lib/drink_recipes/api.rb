class DrinkRecipes::API
    def self.get_categories
        categories = RestClient.get('https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita')
        @categories = JSON.parse(categories)
        binding.pry
        @categories["drink"].each do |drink|
            DrinkRecipes::Categories.new_category_from_api(drink)
        end
    end

end
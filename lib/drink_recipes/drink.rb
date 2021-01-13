class DrinkRecipes::Drink
attr_accessor :category, :category_url, :glass, :ingredients

def self.new_drink_from_api(drink_hash)
    # binding.pry
    drink = self.new
    drink.glass = drink_hash["strGlass"]
    # drink.ingredients = []
    # drink_hash.each do |key, value|
    #     if key.include?("strIngredient") && value 
    #         drink.ingredients << value
    #     end
    # end
    drink.ingredients = drink_hash.select{|key, value| key.include?("strIngredient") && value}.values
    binding.pry
end

def initialize(category=nil, category_url=nil)
    @category = category
    @category_url = category_url
    
end

end
class DrinkRecipes::Drink
attr_accessor :name, :glass, :ingredients, :measurements, :instructions
@@all = []


# def self.drink_names(drink_hash)
#     # binding.pry
#     drink_name = self.new
#     drink_name.name = drink_hash.select{|key, value| key.include?("strDrink") && value}.values
#     # binding.pry
# end

def self.new_drink_from_api(drink_hash)
    # binding.pry
    drink = self.new
    drink.name = drink_hash.select{|key, value| key.include?("strDrink") && value}.values
    drink.glass = drink_hash.select{|key, value| key.include?("strGlass") && value}.values
    # drink.ingredients = []
    # drink_hash.each do |key, value|
    #     if key.include?("strIngredient") && value 
    #         drink.ingredients << value
    #     end
    # end
    drink.ingredients = drink_hash.select{|key, value| key.include?("strIngredient") && value}.values
    drink.measurements = drink_hash.select{|key, value| key.include?("strMeasure") && value}.values
    drink.instructions = drink_hash.select{|key, value| key.include?("strInstructions") && value}.values
    # binding.pry
    @@all << drink 
    drink
end

def self.all
    @@all
end

# def initialize(glass, ingredients, measurements)
#     @glass = glass
#     @ingredients = ingredients
#     @measurements = measurements
#     @key_info = []
# end

end
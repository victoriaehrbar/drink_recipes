class DrinkRecipes::Drink
attr_accessor :name, :glass, :ingredients, :measurements, :instructions
@@all = []


def self.new_drink_from_api(drink_hash)
    drink = self.new
    drink.name = drink_hash.select{|key, value| key.include?("strDrink") && !key.include?("strDrinkThumb") && value}.values
    drink.glass = drink_hash.select{|key, value| key.include?("strGlass") && value}.values
    drink.ingredients = drink_hash.select{|key, value| key.include?("strIngredient") && value}.values
    drink.measurements = drink_hash.select{|key, value| key.include?("strMeasure") && value}.values
    drink.instructions = drink_hash.select{|key, value| key.include?("strInstructions") && !key.include?("strInstructionsDE") && value}.values
    # binding.pry
    @@all << drink 
    drink
end

def self.all
    @@all
end


end
class DrinkRecipes::Drink
attr_accessor :name, :glass, :ingredients, :measurements, :instructions
@@all = []


def self.new_drink(drink_hash)
    # binding.pry
    drink = self.new
    drink.name = drink_hash["strDrink"] 
    # binding.pry
    drink.glass = drink_hash["strGlass"]
    drink.ingredients = drink_hash.select{|key, value| key.include?("strIngredient") && value}.values
    drink.measurements = drink_hash.select{|key, value| key.include?("strMeasure") && value}.values
    drink.instructions = drink_hash["strInstructions"]
    # binding.pry
    @@all << drink 
    drink
end


def self.all
    @@all
end

def self.clear
    @@all.clear
end


end
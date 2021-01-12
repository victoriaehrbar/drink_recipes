class DrinkRecipes::Categories
attr_accessor :category, :category_url

def self.new_category_from_api(drink_hash)
    binding.pry
    category.each do |key, value|
        binding.pry
        self.new(
            key,
            value
        )
    end
end

def initialize(category=nil, category_url=nil)
    @category = category
    @category_url = category_url
    
end

end
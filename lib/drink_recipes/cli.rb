class DrinkRecipes::CLI
    def start
        puts "Welcome to the drink recipe gem!"
        DrinkRecipes::API.get_categories
    end

    def menu
        puts "Please select a category."
        list_categories
    end

    def list_categories
    end
end
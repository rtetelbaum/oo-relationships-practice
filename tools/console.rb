require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



# bakery1 = Bakery.new
# bakery2 = Bakery.new

# dessert1 = Dessert.new(bakery1)
# dessert2 = Dessert.new(bakery1)
# dessert3 = Dessert.new(bakery1)

# ing1 = Ingredient.new("chocolate", 200.0)
# ing2 = Ingredient.new("vanilla", 100.0)
# ing3 = Ingredient.new("flour", 150.0)
# ing4 = Ingredient.new("icing", 300.0)
# ing5 = Ingredient.new("sprinkles", 50.0)
# ing6 = Ingredient.new("sugar", 75.0)

# di1 = DessertIngredient.new(dessert1, ing1)
# di2 = DessertIngredient.new(dessert1, ing2)
# di3 = DessertIngredient.new(dessert2, ing3)
# di4 = DessertIngredient.new(dessert2, ing4)
# di5 = DessertIngredient.new(dessert3, ing5)
# di6 = DessertIngredient.new(dessert3, ing6)

# listing1 = Listing.new("NYC")
# listing2 = Listing.new("Dallas")
# listing3 = Listing.new("Boise")
# listing4 = Listing.new("NYC")

# guest1 = Guest.new("Roman")
# guest2 = Guest.new("Wes")
# guest3 = Guest.new("Erik")

# trip1 = Trip.new(listing1, guest1)
# trip2 = Trip.new(listing2, guest2)
# trip3 = Trip.new(listing3, guest2)
# trip4 = Trip.new(listing1, guest2)
# trip5 = Trip.new(listing2, guest3)
# trip6 = Trip.new(listing1, guest2)

binding.pry
0
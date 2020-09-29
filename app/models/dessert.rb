class Dessert
	attr_accessor :bakery
	@@all = []

	def initialize(bakery)
		@bakery = bakery
		@@all << self
	end

	def self.all
		@@all
	end

	def ingredients
		dis = DessertIngredient.all.find_all { |di| di.dessert == self }
		dis.collect { |di| di.ingredient }
	end

	def calories
		cals = self.ingredients.collect { |ingredient| ingredient.calorie_count }
		cals.sum
	end
end
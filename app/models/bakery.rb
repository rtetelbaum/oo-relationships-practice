class Bakery
	@@all = []

	def initialize
		@@all << self
	end

	def self.all
		@@all
	end

	def desserts
		Dessert.all.find_all { |dessert| dessert.bakery == self }
	end

	def ingredients
		ings = self.desserts.collect { |dessert| dessert.ingredients }
		ings.flatten
	end

	def average_calories
		cals = self.ingredients.collect { |ingredient| ingredient.calorie_count }
		cals.sum / cals.size
	end

	def shopping_list
		self.ingredients.collect { |ingredient| ingredient.name }
	end
end
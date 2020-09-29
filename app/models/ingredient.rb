class Ingredient
	attr_accessor :name, :calorie_count
	@@all = []

	def initialize(name, calorie_count)
		@name = name
		@calorie_count = calorie_count
		@@all << self
	end

	def self.all
		@@all
	end

	def dessert
		dis = DessertIngredient.all.find_all { |di| di.ingredient == self }
		dis.collect { |di| di.dessert }
	end

	def bakeries
		self.dessert.collect { |dessert| dessert.bakery }
	end

	def self.find_all_by_name(iname)
		ings = []
		self.all.find_all do |ingredient| 
			ings << ingredient.name if ingredient.name.include?("#{iname}")
		end
		ings
	end
end
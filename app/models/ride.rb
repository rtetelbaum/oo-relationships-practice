class Ride
	attr_accessor :distance, :passenger, :driver
	@@all = []

	def initialize(distance)
		@distance = distance
		@passenger = passenger
		@driver = driver
		@@all << self
	end

	def self.all
		@@all
	end
end
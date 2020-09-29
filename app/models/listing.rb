class Listing
	attr_accessor :city
	@@all = []

	def initialize(city)
		@city = city
		@@all << self
	end

	def guests
		trips = Trip.all.find_all { |trip| trip.listing == self }
		trips.collect { |trip| trip.guest }
	end

	def self.all
		@@all
	end
end
class Listing
	attr_accessor :city
	@@all = []

	def initialize(city)
		@city = city
		@@all << self
	end

	def trips
		Trip.all.find_all { |trip| trip.listing == self }
	end

	def guests
		self.trips.collect { |trip| trip.guest }
	end

	def trip_count
		self.trips.size
	end

	def self.find_all_by_city(city_name)
		self.all.find_all { |listing| listing.city == city_name }
	end

	def self.most_popular
		self.all.max_by { |listing| listing.trip_count }
	end

	def self.all
		@@all
	end
end
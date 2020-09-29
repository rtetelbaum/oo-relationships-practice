class Guest
	attr_accessor :name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def trips
		Trip.all.find_all { |trip| trip.guest == self }
	end

	def listings
		self.trips.collect { |trip| trip.listing }
	end

	def trip_count
		self.trips.size
	end

	def self.pro_traveller
		self.all.find_all { |guest| guest.trip_count > 1 }
	end

	def self.find_all_by_name(guest_name)
		self.all.find_all { |guest| guest.name == guest_name }
	end

	def self.all
		@@all
	end
end
class Pasenger
	attr_accessor: name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def rides
		Ride.all.find_all { |r| r.passenger == self }
	end

	def drivers
		self.rides.collect { |r| r.driver }
	end

	def total_distance
		dists = self.rides.collect { |r| r.distance }
		dists.sum
	end

	def self.all
		@@all
	end

	def self.premium_members
		Self.all.find_all { |p| p.total_distance > 100 }
	end
end
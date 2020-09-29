require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

listing1 = Listing.new("NYC")
listing2 = Listing.new("Dallas")
listing3 = Listing.new("Boise")
listing4 = Listing.new("NYC")

guest1 = Guest.new("Roman")
guest2 = Guest.new("Wes")
guest3 = Guest.new("Erik")

trip1 = Trip.new(listing1, guest1)
trip2 = Trip.new(listing2, guest2)
trip3 = Trip.new(listing3, guest2)
trip4 = Trip.new(listing1, guest2)
trip5 = Trip.new(listing2, guest3)
trip6 = Trip.new(listing1, guest2)

binding.pry
0
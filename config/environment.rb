require 'bundler/setup'
Bundler.require
require_all 'app'



P1 = Passenger.new("PP")
P2 = Passenger.new("Vidhi")


D1 = Driver.new("Sam")
D2 = Driver.new("Luis")
D3 = Driver.new("Nathan")


R1 = Ride.new(P1, D1, 5)
R2 = Ride.new(P1, D2, 10)
R3 = Ride.new(P2, D3, 108)
binding.pry
0
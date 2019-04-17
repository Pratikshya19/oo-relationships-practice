require 'bundler/setup'
Bundler.require
require_all 'app'



c1 = Client.new("PP")
c2 = Client.new("Vidhi")


t1 = Trainer.new("Sam")
t2 = Trainer.new("Luis")
t3 = Trainer.new("Nathan")


l1 = Location.new(c1, t1)
l2 = Location.new(c2, t2)
l3 = Location.new(c3, t3)
binding.pry
0
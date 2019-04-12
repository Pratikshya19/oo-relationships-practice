class Passenger
    attr_accessor :name
    @@all = []

def initialize(name)
    @name = name
    @@all << self
end



def self.all
    
    @@all
end

def all_rides 
#returns an array of all rides associated with this passenger
    Ride.all.select do |ride|
         ride.passenger == self
        
    end
end



def drivers
 all_rides.map do |ride|
    ride.driver
 end
    
  
end

def total_distance

total = 0
all_rides.each do |ride|
    total += ride.distance
end
total

end

def self.premium_members
# self.total_distance.find_all do |distance|
#     distance > 100

    all_rides = Ride.all.select do |ride|
        ride.distance > 100
    end

    all_rides.map do |ride|
        ride.passenger
    end
end

end


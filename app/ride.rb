class Ride
    attr_accessor :passenger, :driver, :distance
    @@all = []
    # @@distance = 0
def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance
    # @@distance += distance
    @@all << self
end
def  self.all
    
    @@all
end

# def drivers
#     Ride.all.select do |ride|
#         ride.driver == self
#     end
    
#     end

def self.total
    @@all.length

end   

def self.average_distance

    total_distance = @@all.map do |ride|
        ride.distance
    end.sum

    total_distance / @@all.length.to_f
    # @@distance/@@all.length.to_f


end



end
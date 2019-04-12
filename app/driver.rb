class Driver
    attr_accessor :name
    @@all = []

def initialize(name)
    @name = name
    # @car_mileage = car_mileage
    @@all << self
end

def  self.all
    
    @@all
end

def all_rides
    Ride.all.select do |ride|
    ride.driver == self
    end
end

def passengers
all_rides.map do |ride|
ride.passenger
end
end

def rides
    Ride.all.select do |ride|
        ride.driver == self
        end
end

def total_mileage
    total = 0


   all_rides.each do |ride|
    
    total += ride.distance
    end
    total
end

def self.mileage_cap(distance)
    
#   total += 

    @@all.select do |driver|
        driver.total_mileage > distance
    end
end
    

# # end
end





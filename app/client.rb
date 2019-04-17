class Client 
    attr_accessor :name
    @@all = []

def initialize(name)
    @name = name
    @@all << self
end



def self.all
    
    @@all
end


def all_location
    Location.all.select do |location|
        location.client == self
    end
end

def assign_trainer(trainer)
    
end

end
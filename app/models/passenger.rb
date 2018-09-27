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

  def rides
    Ride.all.select do |ride|
      ride.passenger == self
    end
  end

  def drivers
    rides.map do |ride|
      ride.driver
    end
  end

  def total_distance
    distance = 0
    rides.each do |ride|
      if ride.passenger == self
        distance += ride.distance
      end
    end
    distance
  end

  def self.premium_members
    self.all.select do |pax|
      pax.total_distance > 100
    end
  end

end

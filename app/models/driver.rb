
class Driver
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end



  def passenger_names

    # this also works but redundant
    # array = []
    # rides.each do |ride|
    #   if ride.driver == self
    #     array << ride.passenger.name
    #   end
    # end
    # array.uniq

    rides.map do |ride|
      if ride.driver == self
        ride.passenger.name
      end
    end.uniq
  end

  def rides
    Ride.all.select do |ride|
      ride.driver == self
    end
  end

  def total_distance
    distance = 0
    rides.each do |ride|
      if ride.driver == self
        distance += ride.distance
      end
    end
    distance
  end

  def self.mileage_cap(distance)
    self.all.select do |driver|
      driver.total_distance > distance
    end
  end

end

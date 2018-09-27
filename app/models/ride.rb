
class Ride

  attr_accessor :driver, :passenger, :distance

  @@all = []
  # @@sum_distance = 0

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
    # @@sum_distance += @distance
  end

  def self.all
    @@all
  end

  def self.average_distance
    # find average of the sum_distance
    # @@sum_distance/@@all.length
    # .inject & .reduce can find average
    # binding.pry
    @@all.inject(0.0) { |sum, ride| sum += ride.distance }/@@all.size
  end

end

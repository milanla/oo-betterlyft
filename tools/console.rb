require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!

driver = Driver.new("T")
driver2 = Driver.new("E")
driver3 = Driver.new("P")
passenger = Passenger.new("Y")
passenger2 = Passenger.new("R")
passenger3 = Passenger.new("V")
passenger4 = Passenger.new("X")

ride1 = Ride.new(driver, passenger, 3)
ride2 = Ride.new(driver, passenger, 4)
ride3 = Ride.new(driver, passenger2, 100)
ride4 = Ride.new(driver, passenger3, 34)
ride5 = Ride.new(driver3, passenger3, 60)
ride6 = Ride.new(driver2, passenger4, 4)

binding.pry

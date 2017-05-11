require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY )
    @bikes = []
    @capacity = capacity
  end

  def release_bike
      fail "No bikes available" if empty?
     bikes.pop
  end

  def dock(bike)
    fail "Docking station full" if full?
    bikes << bike
  end

  private

  attr_reader :bikes
  def full?
    bikes.count >= @capacity
  end

  def empty?
    bikes.empty?
  end

end

#docking_station = DockingStation.new
# bike1 = Bike.new
# docking_station.dock(bike1)
# docking_station.bike

# docking_station = DockingStation.new
# # p bike = Bike.new
# # docking_station.dock(bike)
# # p docking_station.bike
# # p bike_two = Bike.new
# # docking_station.dock(bike_two)

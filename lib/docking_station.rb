require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
      fail "No bikes available" if empty?
     @bikes.pop
  end

  def dock(bike)
    fail "Docking station full" if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end

#docking_station = DockingStation.new
# bike1 = Bike.new
# docking_station.dock(bike1)
# docking_station.bike

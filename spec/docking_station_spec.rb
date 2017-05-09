require "docking_station"

describe DockingStation do
  it "assigns object in the DockingStation to the bike variable" do
    expect(DockingStation.new).to respond_to(:release_bike)
  end
end

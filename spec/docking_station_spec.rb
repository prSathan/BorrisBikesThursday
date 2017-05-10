require "docking_station"

describe DockingStation do
  it "assigns object in the DockingStation to the bike variable" do
    is_expected.to respond_to(:release_bike)
  end
  #it "gets a bike and expects the bike to be working" do
  #  bike = subject.release_bike
  #  expect(bike).to be_working
  #end
  it "docks the bike back to a docking station" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it "Will release infinite bikes" do
    expect {subject.release_bike}.to raise_error("No more bikes")
  end


end

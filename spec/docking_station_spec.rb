require "docking_station"

describe DockingStation do
  it "responds to release_bike" do
    is_expected.to respond_to(:release_bike)
  end

  it "gets a bike and expects the bike to be working" do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "docks the bike back to a docking station" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  #it "returns docked bikes" do
  #  bike = Bike.new
  #  subject.dock(bike)
  #  expect(subject.bike).to eq bike
#  end

 describe '#release_bike' do
  it "Raises an error when there are no bikes available" do
    expect { subject.release_bike }.to raise_error("No bikes available")
  end
 end

  describe '#dock' do
  it "Raises an error when full" do
  20.times { subject.dock(Bike.new) }
    expect { subject.dock(Bike.new) }.to raise_error("Docking station full")
  end
 end

end

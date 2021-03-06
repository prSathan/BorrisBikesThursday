require "docking_station"

describe DockingStation do

  # it "has a default capacity" do
  #   expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  # end

  describe "initialization" do
    subject {DockingStation.new}
    let(:bike) {Bike.new}
    it "has a default capacity" do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
    expect { subject.dock (bike) }.to raise_error "Docking station full"
  end
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
    subject.capacity.times {subject.dock Bike.new}
    # DockingStation::DEFAULT_CAPACITY.times {subject.dock Bike.new}
    expect { subject.dock(Bike.new) }.to raise_error("Docking station full")
  end
 end

 describe '#initialize' do
   it "Allows a user to input capacity when docking station class is initialized" do
     station = DockingStation.new
     station2 = DockingStation.new(30)
     expect(station.capacity).to eq 20
     expect(station2.capacity).to eq 30
   end
 end

end

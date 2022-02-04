require_relative '../lib/station'

describe Station do

describe "#initialize" do
    let (:station) {Station.new(zone = 1, name = "Victoria")}

    it "should record the instance variable zone" do
        expect(station.zone).to eq 1
    end

    it "should record the instance variable name" do
        expect(station.name).to eq "Victoria"
    end
  end
end
require_relative '../lib/journey'

describe Journey do

  let(:entry_station){ double :entry_station}
  let(:exit_station){ double :exit_station}

  let(:journey) {Journey.new(entry_station)}

    # let(:card) {double (:touch_in, :touch_out)}

    it "should record whether the journey is complete or not" do
    expect(journey.journey_complete).to eq false
  end

    it "should record a fare per journey" do
      expect(journey.fare).to eq 0
    end

    # it "should record the journey as complete" do
   

    #   expect(subject)
  describe "#finish_journey" do

    it "should complete the journey as complete" do
      journey.finish_journey
      expect(journey.journey_complete).to eq true 
    end
end

  describe "#journey_fare" do

    it "should record the fare for the journey" do
        journey.journey_fare(1)
        expect(journey.fare).to eq 1 
    end
  end

  
  it "should check whether it has an entry station" do
    expect(journey.entry_station).to eq entry_station
  end
end


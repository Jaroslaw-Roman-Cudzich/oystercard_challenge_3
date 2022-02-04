class Journey

attr_reader :journey_complete, :fare, :entry_station

    def initialize(entry_station)
        @journey_complete = false
        @fare = 0
        @entry_station = entry_station
    end

    def finish_journey
        @journey_complete = true
    end

    def journey_fare(fare)
        @fare = fare
    end

    # def entry_station(station)
    #     @entry_station
    # end
end
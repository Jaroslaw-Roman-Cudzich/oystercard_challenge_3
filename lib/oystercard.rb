class Oystercard

    attr_reader :balance, :journeys_list, :journey

    LIMIT = 90
    MINIMUM = 1

    def initialize
      @balance = 0
      @in_journey = false
      @journeys_list = []
      @journey = { :entry_station => nil, :exit_station => nil }
      # @entry_station = station
    end

    def top_up(value)
      fail "£#{LIMIT} limit exceeded" if balance + value > LIMIT
      @balance += value
    end

    def in_journey?
      # @in_journey
      if @journey[:entry_station] == nil 
        false
      else
        true
      end
    end

    def touch_in(entry_station)
      fail "Not enough balance" if balance < MINIMUM
      @journey[:entry_station] = entry_station
      # @journeys << {entry_station: entry_station, exit_station: exit_station}
      # @in_journey = true
    end

    def touch_out(exit_station)
      deduct(MINIMUM)
      # @in_journey = false
      # @exit_station = exit_station
      # @exit_station = exit_station
      # @journeys << {entry_station: entry_station, exit_station: exit_station}
      @journey[:exit_station] = nil
      # exit_station
      @journey[:exit_station] = exit_station
      @journeys_list << @journey
    end

  # private

    def deduct(value)
      @balance -= value
    end

  end

class Oystercard

    attr_reader :balance, :entry_station, :exit_station, :journeys

    LIMIT = 90
    MINIMUM = 1

    def initialize
      @balance = 0
      @in_journey = false
      @journeys = {}
      # @entry_station = station
    end

    def top_up(value)
      fail "£#{LIMIT} limit exceeded" if balance + value > LIMIT
      @balance += value
    end

    def in_journey?
      # @in_journey
      if @entry_station == nil 
        false
      else
        true
      end
    end

    def touch_in(entry_station)
      fail "Not enough balance" if balance < MINIMUM
      @entry_station = entry_station
      @journeys << entry_station
      # @in_journey = true
    end

    def touch_out(exit_station)
      deduct(MINIMUM)
      # @in_journey = false
      # @exit_station = exit_station
      @entry_station = nil
      @exit_station = exit_station
      @journeys << exit_station
    end

  # private

    def deduct(value)
      @balance -= value
    end

  end

module Kal
  class DateRange
    extend Forwardable

    # Create shortcuts to the date's beginning/end of month.
    def_delegators :date, :beginning_of_month, :end_of_month

    # Define the current month date.
    # The range will be based on this date.
    attr_reader :date

    # Initialize the range with the specified date.
    # You can then access the dates through the
    # Kal::DateRange#start_date, Kal::DateRange#end_date and
    # Kal::DateRange#range methods.
    def initialize(date)
      @date = date
    end

    # Return the initial calendar range.
    # The date can be a filler (a date from previous month).
    def start_date
      weekday = beginning_of_month.cwday
      offset = weekday == 1 ? 0 : (weekday - 1).days
      beginning_of_month - offset
    end

    # Return the ending calendar range.
    # The date can be a filler (a date from next month).
    def end_date
      weekday = end_of_month.cwday
      offset = weekday == 7 ? 0 : (7 - weekday).days
      end_of_month + offset
    end

    # Return the range between the start and ending dates.
    def to_range
      start_date..end_date
    end
  end
end

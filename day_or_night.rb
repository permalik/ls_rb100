# frozen_string_literal: true

daylight = [true, false].sample

def time_of_day(boolean)
  puts "It's nighttime!" if boolean
  puts "It's daytime" if boolean == false
end

time_of_day(daylight)

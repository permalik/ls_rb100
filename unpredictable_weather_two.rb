# frozen_string_literal: true

def unpredictable_weather_two
  sun = %w[visible hidden].sample
  puts 'The clouds are blocking the sun!' unless sun == 'visible'
end

unpredictable_weather_two

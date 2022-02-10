# frozen_string_literal: true

def unpredictable_weather_three
  sun = %w[visible hidden].sample
  puts 'The sun is so bright!' if sun == 'visible'
  puts 'The clouds are blocking the sun!' unless sun == 'visible'
end

unpredictable_weather_three

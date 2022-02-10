# frozen_string_literal: true

def unpredictable_weather_one
  sun = %w[visible hidden].sample
  puts 'The sun is so bright!' if sun == 'visible'
end

unpredictable_weather_one

# frozen_string_literal: true

def predict_weather
  sunshine = %w[true false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather

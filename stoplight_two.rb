# frozen_string_literal: true

def stoplight
  stoplight = %w[green yellow red].sample
  if stoplight == 'green'
    puts 'Go!'
  elsif stoplight == 'yellow'
    puts 'Slow down!'
  else
    puts 'Stop!'
  end
end

stoplight


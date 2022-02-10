# frozen_string_literal: true

def stoplight
  stoplight = %w[green yellow red].sample
  case stoplight
  when 'green'
    puts 'Go!'
  when 'yellow'
    puts 'Slow down!'
  else
    puts 'Stop!'
  end
end

stoplight

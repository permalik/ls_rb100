# frozen_string_literal: true

stoplight = %w[green yellow red].sample

case stoplight
when 'green' then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else puts 'Stop!'
end

# frozen_string_literal: true

i = 0

loop do
  i += 5
  next if i == 15

  puts i
  break if i == 25
end

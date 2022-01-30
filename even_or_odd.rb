# frozen_string_literal: true

count = 1

loop do
  p "#{count} is odd" if count.odd?
  p "#{count} is even" if count.even?
  count += 1
  break if count > 5
end

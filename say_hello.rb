# frozen_string_literal: true

say_hello = true
counter = 0

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter > 4
  break unless say_hello
end

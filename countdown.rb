# frozen_string_literal: true

puts 'Input a number from which to countdown'
number = gets.chomp.to_i

# while number >= 0
#   puts number
#   number -= 1
# end

until number.negative?
  puts number
  number -= 1
end

puts 'Complete!'

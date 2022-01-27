# frozen_string_literal: true

def hundred_inclusive(number)
  puts 'number is less than 0' if number.negative?
  puts 'number is between 0 and 50' if (number >= 0) && (number <= 50)
  puts 'number is between 51 and 100' if (number >= 51) && (number <= 100)
  puts 'number is greater than 100' if number > 100
end

puts 'Input a number between 0 and 100 inclusive'
user_number = gets.chomp.to_i

hundred_inclusive(user_number)

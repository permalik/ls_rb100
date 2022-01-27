# frozen_string_literal: true

def doubler(number)
  puts number
  doubler(number * 2) if number < 10
end

puts 'Input an integer for doubling'
user_number = gets.chomp.to_i

doubler(user_number)

# frozen_string_literal: true

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

user_number_one = nil
user_number_two = nil

loop do
  puts 'Input integer for dividend: '
  user_input_one = gets.chomp

  puts 'Input integer for divisor: '
  user_input_two = gets.chomp

  if valid_number?(user_input_one) && valid_number?(user_input_two)
    if user_input_two.to_i > 0
      user_number_one = user_input_one.to_i
      user_number_two = user_input_two.to_i
      break
    end
  end

  puts 'Invalid input. Try again...'
end

puts user_number_one / user_number_two

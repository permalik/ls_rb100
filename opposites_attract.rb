# frozen_string_literal: true

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts 'Input number for addition (required: pos & neg): '
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts 'Invalid input. Only non-zero integers are allowed.'
  end
end

user_number_one = nil
user_number_two = nil

loop do
  user_number_one = read_number
  user_number_two = read_number

  break if user_number_one * user_number_two < 0
  puts 'Sorry. One integer must be positive, one must be negative.'
  puts 'Please start over.'
end

result = user_number_one + user_number_two

puts result

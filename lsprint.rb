# frozen_string_literal: true

print_quantity = 0

loop do
  puts 'How many lines would you like to print? Input a number >= 3: '
  user_input = gets.chomp.to_i

  if user_input >= 3
    print_quantity = user_input
    break
  end
  puts 'Not enough lines. Try again...'
end

print_quantity.times do
  puts 'Launch School is the best!'
end

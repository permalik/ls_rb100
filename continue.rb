# frozen_string_literal: true

loop do
  puts 'Would you like to continue? (y/n)'
  response = gets.chomp
  break if (response != 'y') || (response != 'Y')
end

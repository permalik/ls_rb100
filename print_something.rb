# frozen_string_literal: true

valid_responses = %w[y Y n N]
response_flag = false
exit_flag = false

loop do
  puts "Would you like to print 'something'? (y/n)"
  user_input = gets.chomp

  valid_responses.each do |response|
    response_flag = true if user_input == response
  end

  if response_flag
    if user_input == 'y' || user_input == 'Y'
      puts 'something'
      exit_flag = true
    else
      exit_flag = true
    end
  else
    puts 'Invalid response. Try again...'
  end

  break if exit_flag
end

# choice = nil
# loop do
#   puts '>> Do you want me to print something? (y/n)'
#   choice = gets.chomp.downcase
#   break if %w(y n).include?(choice)
#   puts '>> Invalid input! Please enter y or n'
# end
# puts 'something' if choice == 'y'

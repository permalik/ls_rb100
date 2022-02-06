# frozen_string_literal: true

TARGET_PASSWORD = 'secret password'
welcome_message = 'Successful, welcoming secret message!'

loop do
  puts 'Input the secret password: '
  user_input = gets.chomp.downcase

  if user_input == TARGET_PASSWORD
    puts welcome_message
    break
  end

  puts 'Invalid password. Try again...'
end

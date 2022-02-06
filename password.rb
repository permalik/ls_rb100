# frozen_string_literal: true

TARGET_USERNAME = 'secret username'
TARGET_PASSWORD = 'secret password'
welcome_message = 'Successful, welcoming secret message!'

loop do
  puts 'Input the secret username: '
  input_username = gets.chomp.downcase

  puts 'Input the secret password: '
  input_password = gets.chomp.downcase

  if input_username == TARGET_USERNAME && input_password == TARGET_PASSWORD
    puts welcome_message
    break
  end

  puts 'Invalid input. Try again...'
end

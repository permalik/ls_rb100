# frozen_string_literal: true

puts 'Input your first name'
user_first_name = gets.chomp

puts 'Input your last name'
user_last_name = gets.chomp

user_full_name = "#{user_first_name} #{user_last_name}"

puts "Hey there, #{user_full_name}"

10.times do
  puts user_full_name
end

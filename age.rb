# frozen_string_literal: true
puts 'Input your current age'
user_age = gets.chomp.to_i
age_multiplier = 10
4.times do
  adjusted_age = user_age + age_multiplier
  puts "In #{age_multiplier} years, you will be #{adjusted_age}"
  age_multiplier += 10
end

# frozen_string_literal: true

puts 'Input your age in years: '
user_age_in_years = gets.chomp.to_i

user_age_in_months = user_age_in_years * 12

puts "You are #{user_age_in_months} months old."

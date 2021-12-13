# frozen_string_literal: true

# PARAMETERS #
# Add two strings together that, when concatenated,
# return your first and last name as your full name
# in one string

## PSEUDO ##
## GET input from user
## STORE input as first_name
## GET input from user
## STORE input as last_name
## PRINT a concatenated string of
## first_name, <space>, last_name

$stdout.sync = true
puts 'Input first name'
first_name = gets.chomp

puts 'Input last name'
last_name = gets.chomp

puts "#{first_name} #{last_name}"

=begin
# Add two strings together that, when concatenated,
# return your first and last name as your full name
# in one string

puts "Ty" "Malik"
=end

=begin
=end
# Use the modulo operator, division or
# a combination of both to take a 4 digit number
# and find the digit in the:
# 1)thousands 2)hundreds 3)tens 4)ones

def four_digit_places

$stdout.sync = true
puts "Input 4 digit number"
user_string = gets.chomp

user_number = user_string.to_i

thousands_conversion = user_number / 1000
hundreds_conversion = user_number % 1000 / 100
tens_conversion = user_number % 100 / 10
ones_conversion = user_number % 10

puts "
Thousands Place: #{thousands_conversion}
Hundreds Place: #{hundreds_conversion}
Tens Place: #{tens_conversion}
Ones Place: #{ones_conversion}
"


end

four_digit_places
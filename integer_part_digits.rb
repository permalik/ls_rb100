# frozen_string_literal: true

# PARAMETERS #
# Use the modulo operator, division or
# a combination of both to take a 4 digit number
# and find the digit in the:
# 1)thousands 2)hundreds 3)tens 4)ones

## PSEUDO ##
## GET input from user as user_string
## COERCE input user_string -> user_number
## ASSIGN thousands -> ones the calculations for
## each respective category
## PRINT each category with
## its corresponding result

def four_digit_places
  $stdout.sync = true
  puts 'Input 4 digit number'
  user_number = gets.chomp.to_i

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

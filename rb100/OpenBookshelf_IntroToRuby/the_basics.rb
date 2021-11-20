=begin
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
puts "Input first name"
first_name = gets.chomp

puts "Input last name"
last_name = gets.chomp

puts first_name + " " + last_name
=end

=begin
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
=end

=begin
# PARAMETERS #
# Write a program that uses a hash to
# store a list of movie titles with the
# year they came out. Then use the
# puts command to make your program
# print out the year of each movie to the screen.

## PSEUDO ##
## CREATE a token to determine further input
## setting token to false by default
## DEFINE a new user_hash
##  LOOP while token is false
##  GET user input
##  STORE input as title
##  COERCE title to symbol
##  GET user input
##  STORE input as year
##  STORE title and year inside user_hash
##  GET input for "continue (y/n)"
##  STORE input in continue_decision
##  IF continue_decision is n
##    set the token to true
##    iterate the user_hash,
##    printing all values (years)
##  ELSE if continue_decision is anything else
##  CONTINUE allowing input

def movie_year_printer

  quit_token = false
  user_hash = {}

  while quit_token == false

    $stdout.sync = true
    puts "Input movie title:"
    title = gets.chomp.to_sym

    puts "In what year was it made?"
    year = gets.chomp

    user_hash.store(title, year)

    puts "Add another movie? (y/n)"
    continue_decision = gets.chomp

    if continue_decision == "n"
      quit_token = true

      user_hash.each { |key, val| puts val }
    end

  end

end

movie_year_printer
=end

=begin
# PARAMETERS #
# Write a program that outputs the factorial of the
# numbers 5, 6, 7 and 8

## PSEUDO ##
## CREATE new array: user_input_array
## CREATE new array: factorial_array
##    LOOP: UNTIL USER CONFIRMATION
## PROMPT user: integer
## GET user input: integer (store in new variable)
## PUSH variable (with user input integer): onto user_input_array
##    LOOP: CLOSED
##
## BUILD method: 001 calculate factorial
## ACCEPT: single argument
## CREATE new variable: PRINCIPLE_INPUT_AMOUNT
## CREATE new variable: integer_adjuster
## CREATE new variable: accumulating_factorial
##    ITERATE: "PRINCIPLE_INPUT_AMOUNT" TIMES
## ASSIGN value (of subsequent calculation): to accumulating_factorial
## CALCULATE: product of accumulating_factorial and integer_adjuster
## DECREMENT integer_adjuster by one
##    ITERATION: CLOSED
## RETURN: accumulating_factorial
##
## ASSIGN values (of subsequent calculations): to indexes within factorial_array
##    ITERATE: "user_input_array"-LENGTH TIMES
## RETURN value (of subsequent calculations): into aforementioned indexes
## EXECUTE method 001: on each item
##
## RETURN: factorial array

def factorial_calculator
  factorials = []
  continue_token = nil
  user_numbers = []
  user_number = nil

  def number?(obj)
    obj = obj.to_s unless obj.is_a? String
    /\A[+-]?\d+(\.[\d]+)?\z/.match obj
  end

  loop do
    $stdout.sync = true
    puts 'Please input an number from 1 -> n: '

    loop do
      user_number = gets.chomp
      break if number?(user_number)
      puts 'That\'s not an number. Please input an number from 1 -> n: '
    end

    user_numbers.push(user_number.to_i)

    puts 'Successful entry!'

    puts 'Would you like to input another number? (y/n)'
    user_continue = gets.chomp

    if user_continue.casecmp('y') == 0
      continue_token = true
    else
      continue_token = false
    end

    break if continue_token == false
  end

  def factorial_utility(number)
    accumulating_factorial = 1
    integer_adjuster = number

    number.times do
      accumulating_factorial *= integer_adjuster
      integer_adjuster -= 1
    end

    return accumulating_factorial
  end

  factorials = user_numbers.collect {
    |number| factorial_utility(number)
  }

  puts factorials

end
=end

=begin
# PARAMETERS #
# Write a program that calculates the squares of
# 3 float numbers of your choosing and
# outputs the result to the screen

## PSEUDO ##
## CREATE new constant: CONTINUE_LIMIT
## CREATE new variable: continue_token
## CREATE new array: user_floats

## PROMPT user: for a floating point number
##    LOOP: UNTIL continue_token REACHES CONTINUE_LIMIT
## GET user input: assign to variable and trim /n
## CHECK input: ensure it is floating point
## IF invalid entry: re-prompt ELSIF valid entry: push variable onto array
##    LOOP: CLOSED

## BUILD method: 001 calculate_squares
## ACCEPT single float as argument: number from user_floats
## CREATE new variable: squared_value
## CALCULATE number**2: assign result to squared_value
## RETURN: squared_value

## BUILD method: 002 convert_user_array
## ACCEPT single array as argument: user_floats
## CREATE new array: squared_floats
##    ITERATE through each number of passed array: user_floats
## ASSIGN the result from the following calculation: to respective squared_floats index position
## CALCULATE: method_001(number)
##    ITERATION: CLOSED
## RETURN: squared_floats
##
## PRINT method_002(user_floats): to user screen

def float_squared_calculator
  continue_limit = 0
  continue_token = 3
  user_floats = []
  user_float = nil

  def number?(obj)
    obj = obj.to_s unless obj.is_a? String
    /\A[+-]?\d+(\.[\d]+)?\z/.match obj
  end

  loop do
    $stdout.sync = true
    puts 'Please input a float:'

    loop do
      user_float = gets.chomp
      break if number?(user_float)
      puts 'That\'s not a number. Please input a float:'
    end

    user_floats.push(Float(user_float))

    continue_token -= 1

    break if continue_token == continue_limit
  end

  def calculate_squares(float)
    float**2
  end

  def convert_user_array(array)
    array.collect { |number| calculate_squares(number) }
  end

  puts convert_user_array(user_floats)

end
=end
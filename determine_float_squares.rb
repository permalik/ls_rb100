# frozen_string_literal: true

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

def number?(obj)
  obj = obj.to_s unless obj.is_a? String
  /\A[+-]?\d+(\.\d+)?\z/.match obj
end

def float_squared_calculator
  continue_limit = 0
  continue_token = 3
  user_floats = []
  user_float = nil

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

  calculate_squares = lambda do |float|
    float**2
  end

  convert_user_array = lambda do |array|
    array.collect { |number| calculate_squares.call(number) }
  end

  puts convert_user_array.call(user_floats)
end

float_squared_calculator
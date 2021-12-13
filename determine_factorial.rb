# frozen_string_literal: true

# frozen_string_literal = true

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

def number?(obj)
  obj = obj.to_s unless obj.is_a? String
  /\A[+-]?\d+(\.\d+)?\z/.match obj
end

def factorial_calculator
  user_numbers = []
  user_number = nil

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

    continue_token = !user_continue.casecmp('y') ? true : false

    break unless continue_token
  end

  factorial_utility = lambda do |number|
    accumulating_factorial = 1
    integer_adjuster = number

    number.times do
      accumulating_factorial *= integer_adjuster
      integer_adjuster -= 1
    end

    return accumulating_factorial
  end

  factorials = user_numbers.collect { |number| factorial_utility.call(number) }

  puts factorials
end

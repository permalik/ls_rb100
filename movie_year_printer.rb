# frozen_string_literal: true

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

  until quit_token

    $stdout.sync = true
    puts 'Input movie title:'
    title = gets.chomp.to_sym

    puts 'In what year was it made?'
    year = gets.chomp

    user_hash.store(title, year)

    puts 'Add another movie? (y/n)'
    continue_decision = gets.chomp

    next unless continue_decision == 'n'

    quit_token = true

    user_hash.each { |_key, val| puts val }

  end
end

movie_year_printer

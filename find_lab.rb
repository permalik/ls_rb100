# frozen_string_literal: true

# Write a program that checks if the sequence of characters "lab"
# exists in the following strings. If it does exist, print out the word.
#
#   "laboratory"
# "experiment"
# "Pans Labyrinth"
# "elaborate"
# "polar bear"

def find_lab(string)
  p string if string.include?('lab')
end

find_lab('laboratory')
find_lab('experiment')
find_lab('Pans Labyrinth')
find_lab('elaborate')
find_lab('polar bear')

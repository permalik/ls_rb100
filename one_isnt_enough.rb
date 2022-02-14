# frozen_string_literal: true

pets = %w[cat dog fish lizard]
my_pets = [nil, nil]
my_pets[0] = pets[2]
my_pets[1] = pets[1]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

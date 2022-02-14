# frozen_string_literal: true

pets = %w[cat dog fish lizard]
my_pets = [nil, nil]

def print_pet(pet_one, pet_two)
  puts "I have a pet #{pet_one} and a pet #{pet_two}!"
end

pets.select do |pet|
  my_pets[0] = pet if pet == 'fish'
  my_pets[1] = pet if pet == 'lizard'
end

print_pet(my_pets[0], my_pets[1])

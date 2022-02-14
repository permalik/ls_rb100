# frozen_string_literal: true

pets = %w[cat dog fish lizard]
my_pet = nil

pets.select { |pet| my_pet = pet if pet == 'fish' }

puts "I have a pet #{my_pet}!"

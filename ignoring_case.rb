# frozen_string_literal: true

roger_one = 'Roger'
roger_two = 'RoGeR'
dave = 'DAVE'

def ignoring_case(name_one, name_two)
  puts 'true' if name_one.downcase == name_two.downcase
  puts 'false' if name_one.downcase != name_two.downcase
end

def ignoring_casecmp(name_one, name_two)
  puts name_one.casecmp(name_two).zero?
end

ignoring_case(roger_one, roger_two)
ignoring_case(roger_one, dave)

ignoring_casecmp(roger_one, roger_two)
ignoring_casecmp(roger_one, dave)

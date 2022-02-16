# frozen_string_literal: true

def multiply_by_five(num)
  num * 5
end

puts 'Hello! Which number would you like to multiply by 5?'
number = gets.chomp.to_i

puts "The result is #{multiply_by_five(number)}!"

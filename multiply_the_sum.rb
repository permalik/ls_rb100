# frozen_string_literal: true

def add(num1, num2)
  num1 + num2
end

def multiply(num1, num2)
  num1 * num2
end

puts add(1, 2)
puts add(3, 4)
puts multiply(add(1, 2), add(3, 4))

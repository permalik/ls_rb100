# frozen_string_literal: true

def digit_product(str_num)
  digits = str_num.chars.map(&:to_i)
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0

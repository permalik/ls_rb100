# frozen_string_literal: true

food = { fruit: 'apple', vegetable: 'squash', snack: 'popcorn'}

def key_print(hash)
  p hash.keys
end

def value_print(hash)
  p hash.values
end

def kv_print(hash)
  hash.each do |k, v|
    p k
    p v
  end
end

key_print(food)
value_print(food)
kv_print(food)

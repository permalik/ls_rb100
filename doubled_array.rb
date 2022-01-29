# frozen_string_literal: true

og_array = [1, 2, 3, 4, 5]

def doubled_array(array)
  array.map { |num| num + 2 }
end

p og_array
p doubled_array(og_array)

# frozen_string_literal: true

friends = %w[Sarah John Hannah Dave]
counter = 0

until counter == 4
  p "Hello, #{friends[counter]}"
  counter += 1
end

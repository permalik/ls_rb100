# frozen_string_literal: true

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select(&:even?)

p even_numbers

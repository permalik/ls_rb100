# frozen_string_literal: true

numbers = {
  high: 100,
  medium: 50,
  low: 10
}

low_numbers = numbers.select { |key, value| value if value < 25 }

p low_numbers

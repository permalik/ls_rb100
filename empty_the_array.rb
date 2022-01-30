# frozen_string_literal: true

names = %w[Sally Joe Lisa Henry]

loop do
  p names.shift
  break if names.empty?
end

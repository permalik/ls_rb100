# frozen_string_literal: true

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer.include?('y') || answer.include?('Y')
end

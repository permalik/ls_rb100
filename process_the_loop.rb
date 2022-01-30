# frozen_string_literal: true

process_the_loop = [true, false].sample

loop do
  if process_the_loop == true
    p 'The loop was processed'
  else
    p 'The loop was not processed'
  end
  break
end

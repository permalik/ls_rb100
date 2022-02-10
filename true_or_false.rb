# frozen_string_literal: true

def true_or_false
  boolean = [true, false].sample
  boolean ? puts("I'm true!") : puts("I'm false!")
end

true_or_false

# frozen_string_literal: true

names = %w[Dave Sally George Jessica]
activities = %w[walking running cycling]

def name(random_name)
  random_name.sample
end

def activity(random_activity)
  random_activity.sample
end

def sentence(random_name, random_activity)
  "#{random_name} went #{random_activity} today."
end

puts sentence(name(names), activity(activities))

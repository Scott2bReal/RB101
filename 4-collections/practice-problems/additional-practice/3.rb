# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }

# Remove people with age 100 and greater

puts(ages.reject! { |_, value| value >= 100 })

# Given the array below

flintstones = %w(Fred Barney Wilma Betty Pebbles BamBam)

# Turn this array into a hash where the names are the keys and the values are
# the positions in the array.

names_hash = flintstones.each_with_object({}) do |name, hash|
  hash[name] = flintstones.index(name)
end

puts names_hash

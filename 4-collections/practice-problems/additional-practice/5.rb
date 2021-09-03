# In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first naem that starts with "Be"

flintstones.each_with_index { |name, idx| puts idx if name.start_with?('Be') } 

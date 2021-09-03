require 'pry'
# Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

# Modify the hash such that each member of the Munster family has an additional
# "age_group" key that has one of three values describing the age group the
# family member is in (kid, adult, or senior). Your solution should produce the
# hash below

# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

=begin

Problem: Add age group to munsters hash

Input: munsters hash
Output: munsters hash with age group k, v pair added

Data Structure: Hash

Algorithm:
  - For each key in munsters |name|
    - Set variable age = munsters[name]['age']
    - set munsters[name]['age_group'] = age_group(age)

=end

KID = (0..17)
ADULT = (0..64)

def age_group(age)
  return 'kid' if KID.include?(age)
  return 'adult' if ADULT.include?(age)
  'senior'
end

munsters.each do |name, _|
  munsters[name]['age_group'] = age_group(munsters[name]['age'])
end

puts munsters

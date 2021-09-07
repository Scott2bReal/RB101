[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]

=begin

- The Array#select method is being called on the array of hashes on line 1
  - This will return an array containing elements for which the block evaluates
    truthily
- Each hash passed to the block as an argument, local variable hash
- Enumerable#any? called on each element of the original array
- Block executes with hash key and value being passed as key, value
- Code in inner block evaluates whether the first character of the key and value
  are the same in each hash. If that block returns true, that will make it back
  to the select call to populate the return array.

=end

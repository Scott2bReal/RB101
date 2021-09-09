# Using the each method, write some code to output all of the vowels from the
# strings.
hsh = { first: ['the', 'quick'],
        second: ['brown', 'fox'],
        third: ['jumped'],
        fourth: ['over', 'the', 'lazy', 'dog'] }

vowels = []
hsh.each do |_, value|
  value.each do |word|
    word.chars.each do |char|
      vowels << char if char.match?(/[AEIOUaeiou]/)
    end
  end
end

puts vowels

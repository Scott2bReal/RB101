# def word_sizes(string)
#   word_count = Hash.new(0)
#   string = cleanup(string)
#   string.split.each { |word| word_count[word.length] += 1 }
#   word_count
# end
#
# def cleanup(string)
#   string.gsub(/[^A-Za-z ]/, '')
# end

# Book Solution uses delete instead of gsub

def word_sizes(string)
  word_count = Hash.new(0)
  string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    word_count[clean_word.size] += 1
  end
  word_count
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}

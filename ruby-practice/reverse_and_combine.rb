=begin

Your task is to Reverse and Combine Words.

Input: String containing different "words" separated by spaces

1. More than one word? Reverse each word and combine first with second, third
with fourth and so on...

  (odd number of words => last one stays alone, but has to be reversed too)

2. Start it again until there's only one word without spaces

3. Return your result...

Data Structure: Array

Algorithm:
  Split string into words
  loop do
    make nested array where words are grouped in pairs
    map that array to reverse and then combine words
    break if that array size == 1

=end

def reverse_and_combine_text(string)
  words = string.split(' ')
  return words[0] if words.size == 1
  word_pairs = []
  loop do
    word_pairs = []
    words.each_with_index do |word, idx|
      break if idx == words.size - 1
      word_pairs << [word, words[idx + 1]]
    end
    break if word_pairs.size == 1
    words = word_pairs.map { |pair| pair.map(&:reverse).join('') }
  end
  p word_pairs.join('')
  word_pairs.join('')
end

p reverse_and_combine_text("abc def") == "cbafed"

p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"

p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"

p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"

p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"

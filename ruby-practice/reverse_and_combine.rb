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
    make nested array where words are grouped in pairs SUBPROCESS
    map that array to reverse and then combine words
    break if that array size == 1

  Make Pairs Algorithm
    init index
    half the size of the array times, execute
      

=end

# Second Go (PEDAC Included)
=begin

Input: A string containing space separated words
Output: That string with words reversed and combined

Rules:
  - Each word is individually reversed, then combined with other word in pair
  - Single words are reversed
  
Algorithm:

loop
  Make an array words set to splitting string by ' '
  loop
  return joined words array if words array only contains one element
  Iterate through words array by slice size of 2, save as pairs
  Iterate through the pairs array
    For each pair in pairs
    Iterate thru that pair
      reverse both words!
  Iterate through pairs again, and join each pair using map to make new array, and reassign words to that new array
end

=end

def reverse_and_combine_text(string)
  words = string.split(' ')
  loop do
    pairs = []
    return words.join('') if words.size == 1
    
    words.each_slice(2) do |slice|
      pairs << slice
    end
    
    pairs.each do |pair|
      pair.each do |word|
        word.reverse!
      end
    end
    
    words = pairs.map do |pair|
      pair.join('')
    end
    
  end
end

# Initial Solution

#def reverse_and_combine_text(string)
  #words = string.split(' ')
  #return words[0] if words.size == 1
  #word_pairs = []
  #loop do
    #break if words.size == 1
    #word_pairs = make_pairs(words)
    #words = word_pairs.map { |pair| pair.map(&:reverse).join('') }
  #end
  #words.join('')
#end

#def make_pairs(array)
  #index = 0
  #pairs = []
  #(array.size / 2).times do
    #pairs << [array[index], array[index + 1]]
    #index += 2
  #end
  #pairs << [array.last] if array.size.odd?
  #pairs
#end

p reverse_and_combine_text("abc def") == "cbafed"

p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"

p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"

p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"

p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"

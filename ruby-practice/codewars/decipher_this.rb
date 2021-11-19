=begin

Decipher this!

6 kyu

You are given a secret message you need to decipher. Here are the things you
need to know to decipher it:

For each word:

the second and the last letter is switched (e.g. Hello becomes Holle)

the first letter is replaced by its character code (e.g. H becomes 72)

Note: there are no special characters used, only letters and spaces

Examples

decipherThis('72olle 103doo 100ya'); // 'Hello good day'

decipherThis('82yade 115te 103o'); // 'Ready set go'

Input: String
Output: Deciphered string

Data Structure: array

Algorithm:
  Split string into words
  For each word
    pass to fix_word method 
  Join words array delim ' '

  Fix word method:
    split word into chars
    pass chars to fix_first_char method, reassign chars to return value
    for each character, if character is a number then push to first_char array
    delete chars if numbers

=end

def fix_word(word)
  chars = fix_first_char(word.chars)
  chars[1], chars[-1] = chars[-1], chars[1]
  chars.join('')
end

def fix_first_char(chars)
  first_char = []
  fixed = []
  chars.each do |char|
    char.match?(/[0-9]/) ? first_char << char : fixed << char
  end
  fixed.unshift(first_char.join.to_i.chr)
end

def decipher_this(string)
  words = string.split(' ')
  deciphered_words = words.map do |word|
    fix_word(word)
  end
  deciphered_words.join(' ')
end

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"

p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"

p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"

p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"

p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"

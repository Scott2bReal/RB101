=begin

Write a function that, given a string of text (possibly with punctuation and
line-breaks), returns an array of the top-3 most occurring words, in descending
order of the number of occurrences.

Assumptions:

A word is a string of letters (A to Z) optionally containing one or more
apostrophes (') in ASCII. (No need to handle fancy punctuation.)

Matches should be case-insensitive, and the words in the result should be
lowercased.

Ties may be broken arbitrarily.

If a text contains fewer than three unique words, then either the top-2 or top-1
words should be returned, or an empty array if a text contains no words.

Examples:

top_3_words("In a village of La Mancha, the name of which I have no desire to
call to

mind, there lived not long since one of those gentlemen that keep a lance

in the lance-rack, an old buckler, a lean hack, and a greyhound for

coursing. An olla of rather more beef than mutton, a salad on most

nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra

on Sundays, made away with three-quarters of his income.")

# => ["a", "of", "on"]

top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e")

# => ["e", "ddd", "aa"]

top_3_words("  //wont won't won't")

# => ["won't", "wont"]

Bonus points (not really, but just for fun):

Avoid creating an array whose memory footprint is roughly as big as the input
text.

Avoid sorting the entire array of unique words.

Data Structure: Array

Algorithm:
  words = string.split(' ')
  top_words = Hash.new(0)
  for each word in words
    top_words[word] = words.count(word)
=end

def top_3_words(string)
  words = string.split(' ')
  top_words = Hash.new(0)
  final_array = []
  words.each do |word|
    top_words[word.downcase] = words.count(word)
  end
  sorted = top_words.to_a.sort do |a, b|
    b[1] <=> a[1]
  end
  3.times do |time|
    final_array << sorted[time][0]
  end
  final_array
end

p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]

p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]

p top_3_words("  //wont won't won't ") == ["won't", "wont"]

p top_3_words("  , e   .. ") == ["e"]

p top_3_words("  ...  ") == []

p top_3_words("  '  ") == []

p top_3_words("  '''  ") == []

p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]

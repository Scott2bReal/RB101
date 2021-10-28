=begin

The marketing team is spending way too much time typing in hashtags.

Let's help them with our own Hashtag Generator!

Here's the deal:

It must start with a hashtag (#).

All words must have their first letter capitalized.

If the final result is longer than 140 chars it must return false.

If the input or the result is an empty string it must return false.

Examples

" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"

"    Hello     World   "                  =>  "#HelloWorld"

""                                        =>  false

Input: String
Output: Either that string as a hashtag, or false

Data Structure: Array, string

Algorithm:
  return false unless string.size <= 140
  return false if string.empty?
  Split string via spaces
  For each word, capitalize
  Join words array
  Return interpolated with a #
=end

def generate_hashtag(string)
  words = string.split(' ').map(&:capitalize).join('')
  return false unless words.size <= 140
  return false if words.empty?
  hashtag = "##{words}"
  return false if hashtag.size > 140
  hashtag
end

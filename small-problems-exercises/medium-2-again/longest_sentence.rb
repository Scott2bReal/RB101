=begin

Write a program that reads the content of a text file and then prints the
longest sentence in the file based on number of words. Sentences may end with
periods (.), exclamation points (!), or question marks (?). Any sequence of
characters that are not spaces or sentence-ending characters should be treated
as a word. You should also print the number of words in the longest sentence.

Input: Text
Output: Longest sentence in file, number of words in that sentence

Algorithm:
  Open and read file, pass to method as argument (helper method)

  Init a hash called words_per_sentence
  Split text into sentences
  For each sentence, split into array of words
  For each sentence, words_per_sentence key is count of words, value is sentence as a string
  init biggest sentence which is biggest key from that hash
  Print key and value of that key

=end

def load_text_file
  File.read('pg84.txt')
end

def longest_sentence(text)
  words_per_sentence = {}
  sentences = text.split(/\.|\?|!/)

  sentences.each do |sentence|
    words_per_sentence[sentence.split(' ').size] = sentence
  end

  biggest_sentence_size = words_per_sentence.keys.max

  p words_per_sentence[biggest_sentence_size]
  p biggest_sentence_size
end

longest_sentence(load_text_file)

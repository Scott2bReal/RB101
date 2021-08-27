sum = 0

print 'Please write a word or multiple words: '
original_sentence = gets.chomp

words = original_sentence.split(' ')

words.each { |word| sum += word.length }

puts "There are #{sum} characters in \"#{original_sentence}\"."

# Solution from the book (I like it more)

# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."

=begin

Problem:
Mad libs are a simple game where you create a story template with blanks for
words. You, or another player, then construct a list of words and place them
into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and
an adjective and injects those into a story that you create.

Input: 4 Strings: Noun Verb Adjective Adverb
Output: One string that is a story

Data structure: Strings

Algorithm:
  - Ask for each word, save as descriptive variable
  - Output an interpolated string using the variables

=end

def madlib
  puts 'Enter a noun: '
  noun = gets.chomp
  puts 'Enter a verb: '
  verb = gets.chomp
  puts 'Enter an adjective: '
  adjective = gets.chomp
  puts 'Enter an adverb: '
  adverb = gets.chomp
  puts "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
end

madlib

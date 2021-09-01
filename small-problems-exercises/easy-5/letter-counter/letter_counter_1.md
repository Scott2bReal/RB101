## Problem

Write a method that takes a string with one or more space separated words and
returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

### Input

String of one or more space separated words

### Output

Hash containing the number of words of different sizes

### Mental Model

 The input string will contain space separated words. These words must be
 categorized in a hash by the number of characters they contain.
 
 ## Examples
 
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

## Data Structure

Array of words
Hash of word counts

## Algorithm

Initialize new hash word_count
Split string into array of words separated by spaces
Iterate thru words array
  If hash has key that is == to word length
    hash[key] += 1
  Else
    Create new hash key
    Set value to 1
Return hash when finished iterating

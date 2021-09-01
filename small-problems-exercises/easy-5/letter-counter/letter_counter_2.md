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
 
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

## Data Structure

Array of words
Hash of word counts

## Algorithm

Initialize hash with default value 0
Send text thru modified cleaner method from previous exercise
Split string into words
For each word, increment corresponding hash value
Return hash

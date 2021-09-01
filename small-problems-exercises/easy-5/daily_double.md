## Problem

Write a method that takes a string argument and returns a new string that
contains the value of the original string with all consecutive duplicate
characters collapsed into a single character. You may not use String#squeeze or
String#squeeze!.

### Input

String with duplicate letters (or no dupes)

### Output

String with consecutive duplicates removed

## Examples

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

## Data Structure

Array of words
Array of characters per word

## Algorithm

Split string to array of words
For each word in array
Split into array of characters
  Return array of characters with duplicates rejected
Delete character if it is equal to the next character
Join array, return

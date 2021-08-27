## Problem

Write a program that will ask a user for an input of a word or multiple words
and give back the number of characters. Spaces should not be counted as a
character.

### Input

String

### Output

Integer

### Mental Model

The user will input a string, which will then be split up with spaces as the
delimiter. Once split, each element of the resulting array will have its
characters counted, and each of those counts will go into a variable containing
the total sum. That will then be printed to the user once the word array has
been exhausted.

## Examples

input:

Please write word or multiple words: walk

output:

There are 4 characters in "walk".

input:

Please write word or multiple words: walk, don't run

output:

There are 13 characters in "walk, don't run".

## Data Structure

Array

## Algorithm

Get a string from the user (word or multiple words)
Split that string, save as new array
Initialize variable total_chars = 0
Iterate through words array, add return of length of word to sum
Print original string and total characters

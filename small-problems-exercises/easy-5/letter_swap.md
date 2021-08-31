## Problem

Given a string of words separated by spaces, write a method that takes this
string of words and returns a string in which the first and last letters of
every word are swapped.

You may assume that every word contains at least one letter, and that the string
will always contain at least one word. You may also assume that each string
contains nothing but words and spaces

### Input

String

### Output

String with first and last letters of every word swapped

## Examples

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

## Data Structure

Array

## Algorithm

Split string to array words
Initialize swap variable
Iterate over words array
Map a block over each word
  Set first element = swap
  set last element = first
  set first element = swap
Join words array

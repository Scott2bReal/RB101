## Problem

Given a string that consists of some words (all lowercased) and an assortment of
non-alphabetic characters, write a method that returns that string with all of
the non-alphabetic characters replaced by spaces. If one or more non-alphabetic
characters occur in a row, you should only have one space in the result (the
result should never have consecutive spaces).

### Inputs

String

### Output

Cleaned up string (any non-alphabetic character transformed to a space. Multiple
non-alphabetic characters in a row is just one space)

## Example

`
cleanup("---what's my +*& line?") == ' what s my line '
`

## Data Structure

Array

## Algorithm

Search string for characters that are not letters
If character is not letter, change to a space
Squeeze string to get rid of extra spaces

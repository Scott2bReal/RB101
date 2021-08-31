## Problem

Write a method that determines and returns the ASCII string value of a string
that is passed in as an argument. The ASCII string value is the sum of the ASCII
values of every character in the string. (You may use String#ord to determine
the ASCII value of a character.)

### Input

String

### Output

Sum of ascii values

### Problem Domain

String#ord: Returns the Integer ordinal of a one_character string

## Examples

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

## Data Structure

Array

## Algorithm

Split string into characters array
Map String#ord to each element of that array
Return the sum of that array

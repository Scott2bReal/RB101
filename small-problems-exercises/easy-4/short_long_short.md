## Problem

Write a method that takes two strings as arguments, determines the longest of
the two strings, and then returns the result of concatenating the shorter
string, the longer string, and the shorter string once again. You may assume
that the strings are of different lengths.

### Input

Two strings of different lengths

### Output

One string (short + long + short)

## Examples

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

## Data Structure

Array

## Algorithm

If string1 > string2 return string2 + string1 + string2
Else vice versa

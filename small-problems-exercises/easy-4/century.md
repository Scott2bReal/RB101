## Problem

Write a method that takes a year as input and returns the century. The return
value should be a string that begins with the century number, and ends with st,
nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise
the 20th century.

### Input

Integer (year)

### Output

String

### Mental Model

There are a few different problems to solve in this one. First of all, the
century must be determined using the year. Then, the correct suffix for the
number needs to be applied. This will be a good one to think about edge cases
and tests. For example, most numbers ending in 3 will end in 'rd', but 13 ends
in 'th'. Maybe a separate method to add the ordinal indicator?

## Examples

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

## Data Structure

Just strings and integers

## Algorithm

### Getting the year
Convert year integer to float, divide by 100
Round up if > than nearest integer
Convert back to integer
Convert to string, run through ordinal indicator method

### Ordinal Indicator

First check for edge cases (teens)
  * 11th
  * 12th
  * etc.
Then check for last digit
  * 0 = th
  * 1 = st
  * 2 = nd
  * 3 = rd
  * (4..9) = th

### Printing

Print the return of the ordinal method in an apporpriate string

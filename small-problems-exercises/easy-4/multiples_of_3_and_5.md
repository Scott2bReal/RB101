## Problem

Write a method that searches for all multiples of 3 or 5 that lie between 1 and
some other number, and then computes the sum of those multiples. For instance,
if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 +
15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

### Input

One integer (end of range)

### Output

Integer (sum of multiples of 3 and 5 between the two digits)

## Examples 

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

## Data Structure

Array, Range

## Algorithm

Initialize empty array called multiples
Iterate over the range of (1..number), adding multiples of 3 and 5 to the array
Return sum of all elements of that array

## Problem

Write a method that takes an Array of numbers, and returns an Array with the
same number of elements, and each element has the running total from the
original Array.

### Input

Array

### Output

Array containing running total of prior elements

## Examples

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

## Data Structure

Array

## Algorithm

Initialize new array totals
Initialize sum as 0
Iterate over parameter array with index, add current item to sum and push to new
array

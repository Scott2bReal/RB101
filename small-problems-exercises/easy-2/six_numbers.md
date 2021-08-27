## Problem

Write a program that solicits 6 numbers from the user, then prints a message
that describes whether or not the 6th number appears amongst the first 5
numbers.

### Inputs

6 Numbers

### Output

Boolean, couched in string/array

## Examples

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

## Data Structure

Array

## Algorithm

Initialize array
Get those 5 numbers, verify them
After each one is verified, add it to array
After 6 number is obtained and verified, select elements from array that match
Print results

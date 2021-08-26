## Problem

Write a program that asks the user to enter an integer greater than 0, then asks
if the user wants to determine the sum or product of all numbers between 1 and
the entered integer.

### Inputs

  * Positive integer
  * Sum or Product choice

### Outputs

  * Sum or Product of numbers between 1 and user input

### Domain

### Clarifying Questions

  * Should I validate user input?

## Examples

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

## Data Structure

Just variables

## Algorithm

Get integer from user
Verify if is integer and positive
Get operation from user (s or p)
if s
  find sum of numbers between 1 and input
if p
  find product of numbers between 1 and input
print result

## Pseudocode

START

GET positive integer from user SET user_input
SUBPROCESS validate input
GET operation user wants SET operation

IF operation = s
  SUBPROCESS sum of (1..s)
IF operation = p
  SUBPROCESS product of (1..s)

PRINT result

SUBPROCESS sum(num)
RETURN num if num <= 1
RETURN num + sum(num - 1)

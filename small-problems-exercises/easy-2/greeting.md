## Problem

Write a program that will ask for user's name. The program will then greet the
user. If the user writes "name!" then the computer yells back to the user.

### Inputs

* Name

### Outputs

* Regular greeting if no !
* Shout greeting if !

## Example

What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

## Data Structure

Nothing special, just strings

## Algorithm

Ask user for their name
If name has no ! at the end, print a regular greeting
If name does have a ! at the end, ask user why shout

## Pseudocode

START

GET name SET name
IF name ends with !
  PRINT "HELLO #{name}. WHY ARE WE SHOUTING?"
ELSE
  PRINT "Hello #{name}."

END

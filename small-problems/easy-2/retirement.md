## Problem

Build a program that displays when the user will retire and how many years she
has to work till retirement.

### Inputs

* Age
* Desired retirement age

### Outputs

* Current year
* Retirement year
* Years of work left

## Example

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

## Data Structure

Nothing special, just variables

## Algorithm

Ask user for current age, and what age they would like to retire
Subtract current age from retirement age, save as years left
Add years left to current year
Display results

## Pseudocode

START

SET CURRENT_YEAR = 2021

GET current age SET current_age
GET retirement age SET retirement_age

SET years_left = retirement_age - current_age

SET retirement_year = CURRENT_YEAR + years_left

PRINT years_left, retirement_year

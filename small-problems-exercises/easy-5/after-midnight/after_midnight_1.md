## Problem

The time of day can be represented as the number of minutes before or after
midnight. If the number of minutes is positive, the time is after midnight. If
the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the
time of day in 24 hour format (hh:mm). Your method should work with any integer
input.

You may not use ruby's Date and Time classes.

### Input

Integer (minutes before or after midnight)

### Output

String (24hr format time)

### Domain

60 minutes per hour

Minutes in 24hrs = 1440

### Mental Model

Any integer input must work, but because the number of minutes in a day is
finite, that integer must be converted to something that will work with the 24hr
format. 

## Examples

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

## Data Structure

Integer

## Algorithm

### Simple Input (0-1439)

Divide input by 60
Quotient is hours, remainder is minutes
Format and return as such

### Negative Simple Input (> -1439)

Add 1440 + input
Simple input procedure

### Bigger Input

Divmod by 1440, remainder portion is what is used for input to previous
solutions

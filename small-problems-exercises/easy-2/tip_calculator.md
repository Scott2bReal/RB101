## Problem

Create a simple tip calculator. The program should prompt for a bill amount and
a tip rate. The program must compute the tip and then display both the tip and
the total amount of the bill.

### Inputs:

* Bill amount
* Tip rate

### Outputs:

* Tip amount
* Total bill

### Domain:

Tip rate is a percentage value.

### Implicit Requirements

* Dollar amount must be rounded to nearest hundredths place

## Examples

What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

## Data Structure

Nothing special, just variables

## Algorithm

Get bill total and tip rate from the user
Convert both to floats
Convert tip rate from percentage to float (divide by 100)
Multiply the total bill by the converted tip rate
Add that tip amount to the total bill to find total bill
Display results

## Pseudocode

START

GET initial bill amount SET intial_bill
GET tip rate SET tip_rate
SET tip_rate /= 100

SET tip_amount = intial_bill * tip_rate
SUBPROCESS round tip_amount
SET total_bill = tip_amount + intial_bill

PRINT tip_amount, total_bill

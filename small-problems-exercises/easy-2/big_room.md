## Problem

Build a program that asks a user for the length and width of a room in meters
and then displays the area of the room in both square meters and square feet.

### Inputs:

* Length of room (meters)
* Width of room (meters)

### Outputs:

* Area of room (square meters)
* Area of room (square feet)

### Domain:

* 1 square meter == 10.7639 square feet

## Examples

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

## Data Structure

Nothing special, just variables

## Algorithm

* Receive input from user
* Convert to integers
* Multiply those inputs together for area in meters
* Multiply area in meters by 10.7639
* Display results

## Pseudocode

START

GET length SET length
GET width SET width

SET area_meters = length * width
SET area_feet = area * 10.7639

PRINT area_meters, area_feet

END

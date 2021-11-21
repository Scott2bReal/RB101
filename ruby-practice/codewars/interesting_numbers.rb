=begin

Let's make it so Bob never misses another interesting number. We've hacked into
his car's computer, and we have a box hooked up that reads mileage numbers.
We've got a box glued to his dash that lights up yellow or green depending on
whether it receives a 1 or a 2 (respectively).

It's up to you, intrepid warrior, to glue the parts together. Write the function
that parses the mileage number input, and returns a 2 if the number is
"interesting" (see below), a 1 if an interesting number occurs within the next
two miles, or a 0 if the number is not interesting.

Interesting numbers are 3-or-more digit numbers that meet one or more of the
following criteria:

    Any digit followed by all zeros: 100, 90000
    Every digit is the same number: 1111
    The digits are sequential, incementing†: 1234
    The digits are sequential, decrementing‡: 4321
    The digits are a palindrome: 1221 or 73837
    The digits match one of the values in the awesome_phrases array

    † For incrementing sequences, 0 should come after 9, and not before 1, as in
    7890.
    ‡ For decrementing sequences, 0 should come after 1, and not before 9, as in
    3210.



Input: Mileage that is 100 < n < 1000000
Output: 2 (interesting), 1 (interesting in 2 miles) or 0 (not interesting)

Data Structure: Array

Rules:

Brainstorm:
  - Probably would be a good time for a proc!
  - Helper funcion for each category of "interesting"

Algorithm:

=end

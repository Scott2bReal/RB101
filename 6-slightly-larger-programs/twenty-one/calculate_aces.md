Problem: 
Aces are worth 11 points by default. If an ace causes a player to bust,
however, that ace is then worth 1 point. There can be only one ace worth 11
points in a hand, but the other 3 aces could be present, all worth 1 point.

Input: A hand (array of card values) containing one or more aces, which has busted
Output: The total score of that hand accounting for aces (integer) 

Data Structure: Array

Algorithm:
  - For each value in han:
    - If value == 11, change to 1
    - If sum of hand <= 21, break
    - Return total

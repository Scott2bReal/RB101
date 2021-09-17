Problem: The player chooses to hit or stay. Must be one of those choices. Keep
asking the player if they want to hit or stay until they either bust or choose
to stay.

Input: The player's hand, the deck, the player's score
Output: The player's total score

Data Structure: Array

Algorithm:
  - Ask to hit or stay
  - Validate choice
    - If not valid, diplay message and back to first step
  - If player chooses to stay, break out
  - Else
    - Hit player
    - Calculate score
    - Break if busted?


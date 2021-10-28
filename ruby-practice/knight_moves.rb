=begin

Problem: Given two different positions on a chess board, find the least number
of moves it would take a knight to get from one to the other. The positions will
be passed as two arguments in algebraic notation. For example, knight("a3",
"b5") should return 1.

The knight is not allowed to move off the board. The board is 8x8.

Input: Two positions on a chessboard
Output: Mininum moves for a knight to move from first position to second

Rules:
  - Board is 8x8
  - Knight can't move off board
  - Knight can either move vert 2, horizontal 1 or vert 1, horizontal 2
Q's:
  - Input validation?? (going to ignore for now)

Data Structure: Array

Brainstorm/thoughts:

Algorithm:
  Init current_position = start
  Init steps = 0
  Init max_coords = array of non-possible coords (i, 9)


=end

def knight(start, finish)
  current_position = start.chars
  steps = 0
  max_coords = ['i', '9']
end

p knight('a3', 'b5') == 1
p knight('a1', 'c1') == 2
p knight('a1', 'f1') == 3
p knight('a1', 'f3') == 3
p knight('a1', 'f4') == 4
p knight('a1', 'f7') == 5

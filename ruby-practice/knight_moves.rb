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
Q's:
  - Input validation?? (going to ignore for now)

Data Structure: Array

Algorithm:
  Init current_position = start
  Init out_of_bounds = array of non-possible coords (i, 9)
  until current_position == end or current_position includes out_of_bounds

=end

def knight(start, finish)
  current_position = start
  out_of_bounds = ['i', '9']
end

p knight('a3', 'b5') == 1
p knight('a1', 'c1') == 2
p knight('a1', 'f1') == 3
p knight('a1', 'f3') == 3
p knight('a1', 'f4') == 4
p knight('a1', 'f7') == 5

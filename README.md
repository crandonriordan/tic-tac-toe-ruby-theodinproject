# tic-tac-toe-ruby-theodinproject

## General Class Design Thoughts
Game class
  - start
  - stop
  - restart
  - mainly deals with interacting with Board
  - Game has a Board
Board class
  - state
    - 2d array, 3x3 matrix
    - completed?
  - behavior
    - print (uses Printer module)
    - mark_x(x, y) => changes state of 2d array
    - mark_o(x, y) => changes state of 2d array
    - whose_turns => returns whose turn it is (implies some People or Person)
    - change_turns
    - 

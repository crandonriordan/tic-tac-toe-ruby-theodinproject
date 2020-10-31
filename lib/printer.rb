# frozen_string_literal: true

# Module for printing tic-tac-toe boards
# Expects the board to be a 3x3 grid
module Printer
  def print_board(board)
    puts '    0 | 1 | 2 '
    puts '  |-----------'
    puts "0 | #{board[0][0]} | #{board[0][1]} | #{board[0][2]}"
    puts '  | ----------'
    puts "1 | #{board[1][0]} | #{board[1][1]} | #{board[1][2]}"
    puts '  | ----------'
    puts "2 | #{board[2][0]} | #{board[2][1]} | #{board[2][2]}"
  end
end

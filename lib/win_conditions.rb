# frozen_string_literal: true

module WinConditions
  def is_column_win?(board)
    column_one = board[0][0] != ' ' && board[0][0] == board[1][0] && board[1][0] == board[2][0]
    column_two = board[0][1] != ' ' && board[0][1] == board[1][1] && board[1][1] == board[2][1]
    column_three = board[0][2] != ' ' && board[0][2] == board[1][2] && board[1][2] == board[2][2]
    return column_one || column_two || column_three
  end

  def is_row_win?(board)
    row_one = board[0][0] != ' ' && board[0][0] == board[0][1] && board[0][1] == board[0][2]
    row_two = board[1][0] != ' ' && board[1][0] == board[1][1] && board[1][1] == board[0][2]
    row_three = board[2][0] != ' ' && board[2][0] == board[2][1] && board[2][1] == board[0][2]
    return row_one || row_two || row_three
  end

  def is_diagonal_win?(board)
    diagonal_one = board[0][0] != ' ' && board[0][0] == board[1][1] && board[1][1] == board[2][2]
    diagonal_two = board[0][2] != ' ' && board[0][2] == board[1][1] && board[1][1] == board[0][2]
    return diagonal_one || diagonal_two
  end

  def is_win?(board)
    is_column_win?(board) || is_row_win?(board) || is_diagonal_win?(board)
  end
end

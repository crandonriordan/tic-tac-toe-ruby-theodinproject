# frozen_string_literal: true
require_relative "win_conditions"
require_relative "printer"

class Board
  attr_reader :board, :whose_turn, :done
  attr_accessor :player_one, :player_two

  include WinConditions
  include Printer

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @player_one_piece = 'X'
    @player_two_piece = 'O'
    @whose_turn = player_one
    @done = false
    @board = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
  end

  def place_piece(x, y)
    if valid_choice?(x, y)
      if @whose_turn == @player_one
        puts "placing an #{@player_one_piece} at #{x}, #{y}"
        board[x][y] = @player_one_piece
        check_win
        @whose_turn = @player_two
      else
        puts "placing an #{@player_two_piece} at #{x}, #{y}"
        board[x][y] = @player_two_piece
        check_win
        @whose_turn = @player_one
      end
      true
    else
      puts 'not a valid choice'
      false
    end
  end

  def check_win
    if is_win?(@board)
      puts "Hooray! #{@whose_turn} won!"
      @done = true
    end
  end

  def valid_choice?(x, y)
    (x >= 0 && x <= 2 && y >= 0 && y <= 2) && (@board[x][y] == ' ')
  end

  def get_choice
    puts "#{@whose_turn} please pick rows 0 - 2"
    row = gets.chomp.to_i
    while row < 0 || row > 2
      puts "#{@whose_turn} please pick rows 0 - 2"
      row = gets.chomp.to_i
    end

    puts "#{@whose_turn} please pick column 0 - 2"
    column = gets.chomp.to_i
    while column < 0 || column > 2
      puts "#{@whose_turn} please pick a column 0 - 2"
      column = gets.chomp.to_i
    end

    place_piece(row, column)
  end

  def print
    print_board(@board)
  end
end

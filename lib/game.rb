# frozen_string_literal: true
require_relative "board"

# Runs games depending on type
class Game
  def initialize
    @started = false
  end

  def start
    puts 'Enter what game you would like to play: '
    puts "(Type 'tic-tac-toe')"
    @game_type = gets.chomp
    if @game_type == 'tic-tac-toe'
      @started = true
      run_game
    else
      start
    end
  end

  def run_game
    player_one = get_player_one
    player_two = get_player_two
    board = Board.new(player_one, player_two)

    until board.done
      board.print
      board.get_choice
    end

  end

  def get_player_one
    puts "Please enter the first player's name"
    return gets.chomp
  end

  def get_player_two
    puts "please enter the second player's name"
    return gets.chomp
  end

  def started?
    @started
  end
end

game = Game.new
game.start
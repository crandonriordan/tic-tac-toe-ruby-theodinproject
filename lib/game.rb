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
    else
      start
    end
  end

  def started?
    @started
  end
end

game = Game.new
game.start
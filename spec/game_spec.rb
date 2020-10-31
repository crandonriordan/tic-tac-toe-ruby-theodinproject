# frozen_string_literal: true

require 'game'

describe Game do
  game = Game.new

  before(:each) do
    p game
    game = Game.new
  end

  describe '.start' do
    it 'starts up a game when entering tic-tac-toe as the game type' do
      allow(game).to receive(:gets).and_return('tic-tac-toe')
      game.start
    end
  end
end

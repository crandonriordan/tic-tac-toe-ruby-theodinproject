# frozen_string_literal: true
require "board"

describe Board do
  board = Board.new('crandon', 'bob')
  starting_board_state = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
  describe '.board' do
    it 'returns initial board state' do
      expect(board.board).to eq(starting_board_state)
    end
  end

  describe '.player_one and .player_two' do
    it "returns player one's name" do
      expect(board.player_one).to eq('crandon')
    end

    it "returns player two's name" do
      expect(board.player_one).to eq('bob')
    end
  end
end

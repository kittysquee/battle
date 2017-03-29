require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#initialization' do
    it 'should initialize with player 1' do
      expect(game.player).to include player_1
    end
    it 'should initialize with player 2' do
      expect(game.player).to include player_2
    end
  end

  describe '#attack' do
    it 'damages a player' do
      allow(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end

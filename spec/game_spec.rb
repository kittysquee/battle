require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}

  describe '#attack' do
    it 'damages a player' do
      allow(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end

  end
end

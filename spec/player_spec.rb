require 'player'

describe Player do
  subject(:player) {described_class.new(name)}
  let(:name) { double("ruan")}

  it "should return a players name" do
    expect(player.name).to eq name
  end
end

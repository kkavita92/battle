require 'game'


describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) {described_class.new(player_1, player_2)}


  it 'players can attack another player' do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
  end

  describe '#current_round' do
    it 'first round in game starts with Player 1' do
      expect(game.current_round).to eq player_1
    end

    it 'switches round to Player 2' do
      game.switch_round
      expect(game.current_round).to eq player_2
    end
  end

end

require 'player'

describe Player do
  subject(:player1) { Player.new('Kavita') }

  it 'returns player name' do
    expect(player1.name).to eq 'Kavita'
  end
end

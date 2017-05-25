require 'player'

describe Player do
  subject(:player1) { Player.new('Kavita') }

  it 'returns player name' do
    expect(player1.name).to eq 'Kavita'
  end

  it 'returns player hitpoints' do
    expect(player1.hit_points).to eq 100
  end
end

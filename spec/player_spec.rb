require 'player'

describe Player do
  subject(:player1) { Player.new('Kavita') }
  subject(:player2) { Player.new('Prabu') }

  it 'returns player name' do
    expect(player1.name).to eq 'Kavita'
  end

  it 'returns player hitpoints' do
    expect(player1.hit_points).to eq Player::DEFAULT_HP
  end

  it 'reduces hitpoint of player when attacked' do
    player1.attack(player2)
    expect { player2.receive_damage }.to change { player2.hit_points }.by(-10)
  end


end
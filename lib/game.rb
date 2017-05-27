require_relative 'player'

class Game

  attr_reader :player1, :player2, :current_turn

  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
    @current_turn = @player1
  end

  def switch_round
    @current_turn = opposite(@current_turn)
  end

  def attack(player)
    player.receive_damage(random_damage)
  end

  def opponent
    @current_turn == @player1 ? @player2 : @player1
  end

  private

  def opposite(current_player)
    current_player == @player1 ? @player2 : @player1
  end

  def random_damage
    rand(20)
  end

end

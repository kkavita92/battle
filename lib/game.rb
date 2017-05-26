require_relative 'player'

class Game

  attr_reader :player1, :player2, :current_round

  def initialize(player1 = Player.new, player2 = Player.new)
    @player1 = player1
    @player2 = player2
    @current_round = @player1
  end

  def switch_round
    @current_round = opposite(@current_round)
  end

  def attack(player)
    player.receive_damage
  end

  private

  def opposite(current_player)
    current_player == @player1 ? @player2 : @player1
  end
end

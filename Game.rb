require "./Player"
require "./Turn"
class Game

  def initialize 
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end

  def start
    until self.over?
      puts "-----New Turn-----"
      Turn.new(@current_player)
      @current_player = @current_player == @player1 ? @player2 : @player1
    end
    self.print_winner
  end

  def over?
    @player1.lives == 0 || @player2.lives == 0
  end

  def print_score
    
  end

  def print_winner
    
  end

end
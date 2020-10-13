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
      puts print_score
      @current_player = @current_player == @player1 ? @player2 : @player1
    end
    self.print_winner
    puts "-----Game Over-----"
    puts "Good Bye!"
  end

  def over?
    @player1.lives == 0 || @player2.lives == 0
  end

  def print_score
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def print_winner
    if @player1.lives == 0
      puts "#{@player2} wins with a score of #{@player2.lives}/3"
    else 
      puts "#{@player1} wins with a score of #{@player1.lives}/3"
    end
  end

end
require "./Question"
class Turn
  def initialize (player)
    q = Question.new
    puts "#{player}: #{q}"
    answer = gets.chomp.to_i
    if q.ok? answer
      puts "#{player} Yep! You are correct!"
    else 
      puts "#{player} Seriously? No!"
    end
  end

end
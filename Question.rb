# Creates question/answer with 2 random numbers
class Question
  attr_reader :answer
  def initialize 
    @num1 = rand(20)
    @num2 = rand(20)
  end

  def ok?(answer)
    answer == @num1 + @num2

  end

  def to_s
    "What is #{@num1} + #{@num2} ?"
  end
end
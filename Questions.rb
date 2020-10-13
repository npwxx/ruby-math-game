# Creates question/answer with 2 random numbers
class Questions
  attr_reader :answer
  def initialize 
    @num1 = rand(20)
    @num2 = rand(20)
    @answer = @num1 + @num2
  end

  def question?
    "What is #{@num1} + #{@num2} ?"
  end
end
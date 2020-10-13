class Player
  attr_accessor :lives
  def to_s
    @name
  end

  def initialize (name)
    @name = name
    @lives = 3
  end
end
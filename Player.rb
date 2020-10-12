#state: lives, current score, pId (1, -1), playername (1, 2)

class Player
  attr_accessor :name, :lives, :lose_life #read/write acess for attrs

  def initialize(name)  #define your inputs here
    @name = name
    @lives = 3
  end

  def lose_life
    self.lives = lives - 1
  end

end

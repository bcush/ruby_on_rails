require_relative("human")
class Ninja < Human
  def initialize
    super
    @stealth = 175
  end
  def steal(obj)
    attack(obj)
    self.health += 10
    self
  end
  def get_away
    self.health -= 15
    self
  end
end

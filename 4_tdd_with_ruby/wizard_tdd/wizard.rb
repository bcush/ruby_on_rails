require_relative("human")
class Wizard < Human
  def initialize
    super
    @intelligence = 25
    @health = 50
  end
  def heal
    self.health += 10
    self
  end
  def fireball(obj)
    obj.health -= 20
    self
  end
end

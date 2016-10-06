require_relative('mammal')

class Dog < Mammal
  def pet
    @health_value += 5
    self
  end
  def walk
    @health_value -= 1
    self
  end
  def run
    @health_value -= 10
    self
  end
end

cujo = Dog.new
cujo.walk.walk.walk.run.run.display_health

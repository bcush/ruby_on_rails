require_relative('mammal')

class Dragon < Mammal
  def display_health
    puts "this is a dragon!"
    super
  end
  def initialization
    @health_value = 170
  end
  def fly
    @health_value -= 10
    self
  end
  def attack_town
    @health_value -= 50
    self
  end
  def eat_humans
    @health_value += 20
    self
  end
end

reptar = Dragon.new
reptar.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health

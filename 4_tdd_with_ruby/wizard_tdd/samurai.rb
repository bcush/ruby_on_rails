require_relative("human")
class Samurai < Human
  @@samuraicount = 0
  def initialize
    super
    @health = 200
    @@samuraicount += 1
  end
  def death_blow(obj)
    obj.health = 0
    self
  end
  def meditate
    self.health = 200
    self
  end
  def how_many
    puts @@samuraicount
    self
  end
end

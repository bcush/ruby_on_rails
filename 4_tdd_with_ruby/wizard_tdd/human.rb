class Human
  attr_accessor :strength, :intelligence, :health, :stealth
  @@samuraicount = 0
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end

  def attack(something)
    if something.class.ancestors.include?(Human)
      puts "this is human"
      something.health -= 5
    end
    self
  end
end

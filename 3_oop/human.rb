class Human
  attr_accessor :health
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

teststring = "hello"
hooman1 = Human.new()
hooman2 = Human.new()
hooman2.attack(hooman1)
hooman2.attack(teststring)
puts hooman1.health

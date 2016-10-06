class ParentClass
  def a_method
    puts 'b'
  end
end
class SomeClass < ParentClass # < means inherit (or "extends" if you are
                              # from a Java background)
  def another_method
    puts 'a'
  end
end

instance = SomeClass.new
instance.another_method      # => 'a'
instance.a_method            # => 'b'

# All non-private variables and functions are inherited by the child class
# from the superclass.

# Let's create an example of how classes can inherit from superclasses
class Mammal
  def initialize
    puts 'I am alive!'
  end
  def breathe
    puts 'Inhale and exhale'
  end
end

class Cat < Mammal      # this means Cat inherits from the Mammal class
  def jerk
    puts 'scratching you...'
  end
  def speak
    puts "meow"
  end
end

chloe = Cat.new   # create new Object called chloe of from Cat class
chloe.jerk        # prints 'scratching you' on the screen
chloe.speak       # prints 'meow'
chloe.breathe     # can access the mammal methods as well, printing breathing

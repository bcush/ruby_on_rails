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
  def who_am_i
    puts self
  end
end

# Let us demonstrate the usage of 'self'
# 'self' refers to whatever object called that method
# So for example, let's add a new method to the Cat class called who_am_i
# This method will print out the value of 'self' when called

chloe = Cat.new
chloe.who_am_i      # should print cat object
puts "*******************************************\n"

# Likewise, we are also able to return 'self' which will allow us to
# go ahead and chain methods one after the other

class Cat < Mammal
  def jerk
    puts 'scratching you...'
    return self
  end
  def speak
    puts 'meow'
    return self
  end
  def who_am_i
    puts self
    return self
  end
end

chloe = Cat.new
chloe.speak.who_am_i.jerk
puts "*******************************************\n"

# Let us recall from an earlier exercise that when ending a method,
# Ruby will return the last thing we mentioned. So both return and self
# are just self in our methods do the same thing

class Cat < Mammal
  def jerk
    puts 'scratching you...'
    self        # Remember since Ruby returns last thing mentioned, justdothis
  end
  def speak
    puts 'meow'
    self
  end
  def who_am_i
    puts self
    self
  end
end

chloe = Cat.new
chloe.speak.who_am_i.jerk

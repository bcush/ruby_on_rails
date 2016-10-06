#!/usr/bin/ruby -d
# Let's start out by creating a User class
class User
end
user1 = User.new
user2 = User.new
# This will return false
puts user1 == user2

# Now let's add a property to the User class
# A property can be thought of as a column whereas the object is an instance

class User
  @first_name
end

# Now that we've added a property to the class, let's see if we can define
# that property in the user1 and user2 objects we just created

user1.first_name = "Bob"
user2.first_name = "Sam"

# We get a NoMethodError returned to us, so we cannot do that just yet
# In other words we have to create a getter and setter function

# Let's start by creating our setter function
class User
  def first_name=(val)
    @first_name = val
  end
end

# Now let's try setting that value
user1.first_name = "Bob"

# But if we try we still cannot read that variable
# So let's add the getter method now
class User
  def first_name
    return @first_name
  end
end

# In Ruby, we do not always need to specify a return. Ruby will return
# by default whatever was evaluated last. Let's rewrite with this in mind.
class User
  def first_name
    @first_name
  end
end

# Now let's add yet another attribute to the User class
class User
  @last_name
end

# Now that we have a new attribute, then we should want to define the
# getters/setters for that right? Well that's a lot of work. Thankfully
# Ruby has created some syntatic sugar to build getter/settings for us.
class User
  attr_reader :last_name
  attr_writer :last_name
end

# If we look, the attr_reader creates a getter method called "last_name"
# while the attr_writer creates a setter method called "last_name(val)"

# Ruby takes this one step further and let's do this all in one step.
# We can do this with the following line of code in our definition.
class User
  attr_accessor :first_name
  attr_accessor :last_name
end

# New concept: sometimes we want to initialize an instance variable
# while the object is being created. We can do that with User.new,
# and set the attributes with setters, but Ruby provides us with a better
# method to do this. We can add the initialize method below so that we
# can instantiate objects with specific values.

# Instead of this:
class User
  attr_accessor :first_name, :last_name
end
kobe = User.new
kobe.first_name = "Kobe"
kobe.last_name = "Bryant"

# We can now do this:
class User
  attr_accessor :first_name, :last_name
  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end
end
steph = User.new("Stephen", "Curry")

# Notice that we def the initalize method to take in two parameters,
# which we will then be able to reference when the initialize method
# runs after the object instance is created.
# So you see in the example that we create an object named 'steph'
# and pass in "Stephen" and "Curry", which become f_name, and l_name.
# Then that is passed into the initialize function, and then
# our attributes @first_name and @last_name becomes those arguments.

# Now let's talk about Methods and their declarations
# Class methods are declared in the same way as normal methods, but
# except they are prefixed by self or the class name, followed by a period.
#
# Methods are executed at the Class level and may be called without an
# object instance.
# They cannot access instance variables but do have access to class variables.
class MyClass
  def some_method
    puts 'something'
  end
end

something = MyClass.new
puts something.some_method # This should return 'something'

# Which means, if we want our User class to say who this user is,
# we can declare it like the following:
class User
  attr_accessor :first_name, :last_name
  def initialize(f_name, l_name)
    @first_name = f_name
    @last_name = l_name
  end
  def my_name
    puts "My first name is #{first_name}."
  end
end
steph = User.new("Stephen", "Curry")
steph.my_name # this should print 'I am Stephen'

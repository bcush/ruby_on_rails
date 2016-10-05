# We can also set a global variable -- they start with $.
# For example, $global_variable = 5, or $age = 24.
# We don't want to use global variables, they are bad.

class CodingDojo
  # The double @ means that this is a class variable, meaning all the class
  # methods and all the instances of this Class can access this variable.
  # Class variables are rarely used.
  @@no_of_branches = 0
  def initialize(id, name, address)
    # Instance variables begin with @ and have a default value of nil
    @branch_id = id
    @branch_name = name
    @branch_address = address
    @@no_of_branches += 1
    puts "\nCreated branch #{@@no_of_branches}"
  end
  def hello
    puts "Hello CodingDojo!"
  end
  def displayAll
    puts "Branch ID: %d" % @branch_id
    puts "Branch Name: %s" % @branch_name
    puts "Branch Address: %s" % @branch_address
  end
end

# Local variables are defined in a method and begin with a lowercase
# letter or a _
_x = 5
x = 5


# now using above class to create objects
branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA")
branch.displayAll
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA")
branch2.displayAll

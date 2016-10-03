# Puts exercise learning about variables in Ruby.

x = 5
y = 10
z = x + y

puts z

# Notice how ruby doesn't use semicolons. Ruby understands the end of a
# statement because of the newline that is at the end of each line.
# If you want you can use semicolons to create multiple statements on one line.
# See the example below:

x = 5; y = 10; z = x + y

puts z

# You see that the same result is returned.

# Let's do some more experimentation.
# After this code runs then we see that after each puts there is a new line.
first_name = "Michael"
last_name = "Choi"

puts "Your name is "
puts first_name
puts last_name

# Now let's try to see if we can build all of this on one statement using
# only a single puts statement.

# Put these variables in a single puts statement and then let's see what
# happens.
puts "Your name is ", first_name, last_name

# Notice that it adds a new line after each of these commas, because that
# is what puts does. It adds a newline unline the print command.
# What is we don't want this? Then let's try using +.

puts "Your name is " + first_name + " " + last_name

# Let's try some other things, how can I insert a variable where there is ...
puts "First name is ... and last name is ..."

# Let's do the following. This is how you can insert a string value inside:
# You put a hash and a string value inside
puts "First name is #{first_name} and last name is #{last_name}"

# Here is another way to do it. You put the placeholders below, then pass
# it an array. The order that you place the placeholders is how it will be
# read from the array. The %s is for string.
puts "First name is %s and last name is %s" % [first_name, last_name]

# Another example
z = 50
puts "The value of z is #{z}"

# Another example. This one says %d which is decimal.
puts "The value of z is %d" % [z]

# Or you can just do it this way since there's only one value
puts "The value of z is %d" % z

# Also another one you can try is float. Let's do that:
z_2 = 50.999
puts "The value of z_2 is %f" % z_2

# What happens when we do this? Likely an error message right.
# puts "I am 5'10" tall"
#
# beecushman:ruby_exercises beecushman$ ruby exercise2.rb
# exercise2.rb:69: syntax error, unexpected tIDENTIFIER, expecting end-of-input
# puts "I am 5'10" tall"
#                      ^

# To use a string that has a quotations mark you want to escape it.
puts "I am 5'10\" tall"

#You can also add a tab using \t or add a newline using \n
puts "\t\tI am\n 5'10\" tall"

# You should be comfortable with puts, know the difference between:
# puts a, b
# puts a + b
# when a is a string and b is a string
# Get familiar with pound and percent

a = "hello "
b = "world"
puts a, b
puts a + b

# Echos out CodingDojo
x = "CodingDojo"
puts x

# Now let's practice some methods on the stirng object
# Remember that Ruby is a OO programming language -- everything is an object
# The output of this is 10
puts x.length

# Now let's do the .class method. This should return the type of class.
# In this case it outputs String.
puts x.class

# Try another. This should capitalize the first word.
# This outputs Codingdojo. Notice the d is lowercase.
puts x.capitalize

# This will make it all capitalized.
puts x.upcase

# We can also make it all lowercase.
puts x.downcase

# Now if we are looking for index 2, then we should expect a d:
puts x[2]

# Now here is a function that you will use a lot: include?
# The questionmark is part of the name of the function.
# This is a case sensitive function. This should look for the word dojo.
puts x.include?("dojo")

# Since it returned false, we need to make sure we are being case sensitive.
# We notice that this function call actually will return true.
puts x.include?("Dojo")

# We can also do something with conditionals, so review the following:
puts "This word has the word 'Dojo'" if x.include?("Dojo")

# We don't actually need the ( ) for this function call.
puts "This word has the word 'Dojo'" if x.include? "Dojo"

# Let's say we have a long string with terms seperated by commas.
wut = "john, charles, matt, joe"

# I want to split this string by commas, and return an array.
# This might come in handy later when we do some logic.
puts wut.split(",")

# Now I can run this again and show it as a string.
puts wut.split(",").to_s

# Let's create another variable
wut2 = ""

# If the variable is empty, then we want it to print a statement.
# Doing this returns us: wut2 is empty.
# We will use this a lot in the Rails application, in the database sometimes
# we might be returned an empty field, and if so, we might want it to do
# something. So this .empty? is used quite a lot for strings.
puts "wut2 is empty" if wut2.empty?


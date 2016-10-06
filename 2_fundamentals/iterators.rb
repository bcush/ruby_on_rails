# This is practice with iterators

# .any takes each item in the array and passes it into the code block
# the item passed in is referenced as whatever is in the | | brackets
# this takes the value of ants, bear, and cat, and checks to see if
# length if greater or equal to 3, if any value meets this criteria
# then the return value is going to be true
puts "This is practice with .any?"
puts ["ants", "bear", "cat"].any? {|word| word.length >= 3}


# each will take each item in the array, pass it into the code block
# (in this case, just print the value), and then also print
# --- after each word is printed
puts "\nThis is practice with .each"
puts ["ants", "bear", "cat"].each {|word| print word, "--"}

# the .collect function will take each item in the array, and
# pass it into the block, returning a new array that was the result
puts "\nThis is practice with .collect"
puts (1..4).collect {|i| i*i}

# let's try an alternate version
puts "\nLet's try an alternate implementation of .collect."
puts (1..4).collect { "cat" }

# we have one called .map, which returns a new array with the results
# of running the block once for every element in enum.
# It is exactly like .collect

puts "\nLet's do some practice with .map"
puts (1..4).map {|i| i*i}

# now let's check out the .detect function
# detect and find will run, and return the first iteration in which
# the object is not !false or !nil

puts "\nLet's do a demonstration of the .detect function."
puts (1..100).detect { |i| i % 5 == 0 and i % 7 == 0 }

# let's do an test of the .find_all iterator
# this will return an array of elements in which the code block is true

puts "\nLet's do a demonstration of the .find_all iterator."
puts (1..10).find_all { |i| i % 3 == 0}

# the same also goes for .select.. .select and .find_all are similar
puts "\nLet's try a .select this time to see they are the same."
puts (1..10).select { |i| i % 3 == 0 }

# Now let's try the .reject iterator method. This is the exact
# opposite of find_all
puts "\nThis is an example fo the .reject iterator method."
puts (1..10).reject { |i| i % 3 == 0}

# now let's demonstrate how the .upto method works
puts "\nThis is a demonstration of the .upto method."
puts 5.upto(10) { |i| print i, " " }


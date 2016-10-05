#!/usr/bin/ruby

a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5, 6, 9, 3, 1, 2, 4, 7, 8, 10]
c = ["Dojo", 9]

# This is another way to create an array with a bunch of strings
# That is to the use the following method:

puts "We can declare an array in a number of ways."
ab = %w{Matz Guido Dojo Choi John}
puts ab

# returns the first value or 0th index of the array
# This display 0th element which is Matz
puts "\nShow the 0th value in the \'a\' array."
puts a[0]

# This displays the 4th element which is John
puts "\nShow me the value of the 4th index in the \'a\' array."
puts a[4]

# If we do a + b then we see that the arrays get concatenated
# and returns this new, longer array
puts "\nShow me what happens when we just add two arrays together?"
puts a + b

# So a + b is an array. What if we want to convert to a string:
puts "\nWhat happens if we add two arrays together, then convert to string?"
x = a + b
puts x.to_s

# Let's try something new. I've added c = ["Dojo", 9] above.
# This subtracts the in c from the result of (a+b) and returns it.
puts "\nTell me what the subtraction of \'c\' is from \'a\' + \'b\'."
x = (a + b) - c
puts x.to_s

# If we call the public object method .class on b, then we should
# get back what type of class it's built from.
# Returns: "Array"
puts "\nTell me what class \'b\' is derived from."
puts b.class

# Let's check out the shuffle function on the 'a' array
puts "\nShuffle time on \'a\'."
puts a.shuffle

# Let's check out the .join method:
puts "\nThis command will shuffle b, then join each value with a - symbol."
puts b.shuffle.join("-")

# puts a.to_s
puts "\nThe to_s method will create a string representation of an array."
puts "The below is an array that is printed to console.."
puts a
puts "Now let's print a.to_s which is \"[\"array_item\"]\""
puts a.to_s

# using .at
puts "\The .at method will take in an index number, and return the value."
puts "Also, if you put a negative number then it will go from the end."
puts "The following will show a.at(1) and a.at(-1) for fun."
puts a.at(1)
puts a.at(-1)

# using .fetch
puts "\nUsing .fetch returns the value at the given index."
puts "\nWe can also return a value using .fetch is the index is out of bounds."
puts a.fetch(1)
puts a.fetch(200, "not here")

# Let's delete an entry from our array.
# using .delete
puts "\nUsing the .delete method we can remove values from index (like Choi)."
a.delete("Choi")
puts a

# using .push
puts "\nYou can push into an array too. Let's do a.push(\"hello\")."
puts a.push('hello');

# using .pop
puts "You can also pop from an array. Let's do a.pop."
puts "It will return the item that has been popped."
puts a.pop

#using .length
puts "\nWe can also return the length of an array using the .length method."
puts "Length of a is #{a.length}."

#using .join
puts "\nUsing .join will join the items in an array."
puts "You can pass something and it will use that to seperate the values."
puts a.join('- ')

#using .reverse
puts "\nI assume reverse is going to reverse the array."
puts a.reverse

#using .shuffle
puts "\nUsing .shuffle will shuffle the array items."
puts a.shuffle

# using .sort
puts "\nLet's run .sort on an array."
puts a.sort
puts "It looks like it will sort by alphabetical order."

# using .slice
puts "\nSlice returns to use an index value, or a range of values."
puts a.slice(1,3)

# using .insert
puts "\n.insert will insert a value before the kth index (k, value)"
puts a.insert(3, "poo")

# The values at function will return an array with values specified at
# the param
puts "\nLet's check out the insert method."
z = %w{cat dog bear}; puts z.values_at(1,2).join(' and ')

#Alternative way of create an array %w{}
puts "\nThis is a repeat of above.."
puts "We can declare an array in a number of ways."
ab = %w{Matz Guido Dojo Choi John}
puts ab

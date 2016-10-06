# we want to create something that does the following:
#
# * create a range, set it equal to a variable
# * print/return what class this range derives from
# * print/return whether or not the range includes 3
# * print/return the last number in the range
# * print/return the maximum number in the range
# * print/return the minimum number in the range
# * create a range a-z, convert it to an array, shuffle it, convert it to string

x = (1..100)
puts "This object derives from #{x.class}!"
puts "This range contains 50!" if x.member? 50
puts "This range contains 3!" if x.include? 3
puts "The last number in this range is #{x.last}!"
puts "The minimum number in this range is #{x.min}!"
puts "The maximum number in this range is #{x.max}!"

puts "\nNow I will use an alternate method that requires converting to string:"
puts "The last number in this range is " + x.last.to_s + "!"
puts "The mininum number in this range is " + x.min.to_s + "!"
puts "The maximum number in this range is " + x.max.to_s + "!"

y = ('a'..'z')
puts y.to_a.shuffle.to_s

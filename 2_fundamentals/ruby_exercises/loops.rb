# This is an example of a while loop

# First let's set our global variables, notice the dollar sign ($)
$i = 0
$num = 5

# Now let's start out while loop by using the keyword 'begin'
begin
  # Print this string and inject the variable i within the # curly brackets
  puts "I am inside of the while loop. Number = #{$i}"

  # Print the variable i unless i reaches three.
  # Also read as unless !(i=3).. so print unless i = 3.
  puts "#{$i} is not 3." unless $i == 3

  # Increment our i variable by 1
  $i += 1

# End the while loop when i is less than num
end while $i < $num

# Here is an example of a range

# This is going to loop through the range 0-5 printing the value.
# Notice we used the local variable and not global, otherwise this
# would not work.
for i in 0..5
  puts "Value of local variable is #{i}"
  puts "i is 3!!!!" if i == 3
end

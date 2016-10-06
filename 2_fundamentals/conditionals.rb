# Conditionals in Ruby are similar to other languages.
# In this example we only let people into our club that are older than 21.
age = 22
if age > 21
    puts "Welcome to the party"
else
  puts "Not yet"
end

# We can also build else-if statements. One key difference is that
# Ruby uses elsif statements and not else if

number = 15
if number % 3 == 0 && number % 5 == 0
  puts "FizzBuzz"
elsif number % 3 == 0
  puts "Fizz"
elsif number % 5 == 0
  puts "Buzz"
end

# Sometimes we want to do something if it turns out to not be true

if !(age < 21)
  puts "Welcome to the Party"
else
  puts "Not yet"
end

# The above can be hard to read. So let's instead use our 'unless' statement
unless age > 21
  puts "Welcome to the party"
else
  puts "not yet"
end

# We use the if and else statements for things that evaluate to true or false.
# In Ruby, only two things can evaluate to false: nil and false
# This means that anything other than nil or false will equate to true

# Positive Energy
if ""
  puts "i am positive"
end
if 0
  puts "i am positive"
end

#Negative Energy
unless nil
  puts "i am negative"
end
unless false
  puts "i am negative"
end

# We can also write if/unless statements in a single line
puts "I am positive" if "hello"
puts "I am positive" if 24
puts "I am positive" unless nil
puts "I am positive" unless false

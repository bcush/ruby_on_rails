#!/usr/bin/ruby

# This demonstrates the basics of the block (and invoking using yield).
def test
  puts "you are in the method"
  yield
  puts "you are again back to the method"
  yield
end
test {puts "you are in the block"}

# Now let's demonstrate the ability to pass in parameters to the block.

def test2
  puts "\n"
  yield 5
  puts "You are in the method test2"
  yield 100
end
test2 {|i| puts "You are in the block #{i}"}

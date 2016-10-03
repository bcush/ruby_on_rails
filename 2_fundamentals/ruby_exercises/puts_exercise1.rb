# This is to demonstrate the difference between puts and print.
# The print command will put a newline automatically.
# The puts command will not put a newline automatically.

# Notice that each of these are on a newline.
puts "hello"
puts "Coding"
puts "Dojo"

# Notice that each of these is not on a newline.
print "hello"
print "Coding"

=begin
  this is how you start a long comment
  you do the begin that see above and
  at the end you want to just do this end
=end


# Let's look at BEGIN. Whatever I put in the codeblocks for BEGIN will
# execute before all the other calls. Let's try it out.
BEGIN {
  puts "this is in the begin block"
}

# Now let's also look at the END statement. This will run at the END of
# any of our calls above.
END {
  puts "this is in the end block"
}

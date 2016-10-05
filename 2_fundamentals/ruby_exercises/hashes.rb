# This is an example of how hashes are used and how to manipulate them.

# Create our hash table
puts "Create our hash table. Let's call it h."
h = { :first_name => "Coding", :last_name => "Dojo" }

# Echo out h to console
puts h

# Let's demonstrate the usage of .delete on a hash table.
puts "\nWe will now delete the :first_name symbol (and value)."
h.delete(:first_name)
puts "\nNow that we have deleted :first_name, let's see what we have."
puts h

# Let's demonstrate the empty? function on the hash table.
puts "\nWe will now show the .empty? function on this hash table."
puts "\nIf this returns true, then the hash is empty. Otherwise false."
puts h.empty?

# Now let's demonstrate the .has_key? method.
puts "\nWe will now show the .has_key? method."
puts "\nLet's check for the :last_name key."
puts h.has_key? :last_name
puts "\nNow, let's check for the existence of :first_name."
puts h.has_key? :first_name

# Now finally let's demonstrate the .has_value? function.
puts "\nNow we will check the .has_value? function."
puts "\nLet's see if there is a value of \"poop\" here."
puts h.has_value? "poop"
puts "\nNow let's see if there is a value of \"Dojo\""
puts h.has_value? "Dojo"

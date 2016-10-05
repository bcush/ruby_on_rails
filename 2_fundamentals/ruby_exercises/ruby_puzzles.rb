# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the
# sum of all numbers in the array. Also have the function return an array that
# only include numbers that are greater than 10 (E.g. when you pass the array
# above, it should return an array with the values of 13,25,32 - hint: use
# reject or find_all method)

# Iterate through an array and print all values.
testArr = [3, 5, 1, 2, 7, 9, 8, 13, 25, 32]

def puzzle1(arr)
  sum = 0
  # Iterate through each value in array; add index to the value of sum
  arr.each { |i| sum += i }
  puts "#{sum}"

  newArr = arr.find_all { |i| i > 10 }
  return newArr
end

puts puzzle1(testArr)

# Create an array with the following values: John, KB, Oliver, Cory, Matthew,
# Christopher. Shuffle the array and print the name of each person. Have the
# program also return an array with names that are longer than 5 characters.
nameArr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

def puzzle2(arr)
  puts "\nShuffle time:"
  puts arr.shuffle
  puts "\nGreater than 5 character time:"
  arr.each { |name| puts name if name.length > 5}
end

puzzle2(nameArr)

# Create an array that contains all 26 letters in the alphabet (this array must
# have 26 values). Shuffle the array and display the last letter of the array.
# Have it also display the first letter of the array. If the first letter in
# the array is a vowel, have it display a message

letters_array = Array("a".."z")
letters_array.shuffle!
puts letters_array.last
puts letters_array.first
puts letters_array.first+" is vowel" if ["a","e","i","o","u"].include?(letters_array.first)

# Generate an array with 10 random numbers between 55-100.

random_array = Array.new
10.times { random_array.push(rand(55..100)) }
print random_array


puts random_array.sort
puts random_array.max
puts random_array.min
5.times { print rand(65..90).chr }
10.times { string_array.push((1..5).map{ rand(65..90).chr }.join) }


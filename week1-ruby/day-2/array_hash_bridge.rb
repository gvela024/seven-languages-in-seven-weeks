# Hash to array
my_hash = { first: 1, second: 2, third: 3 }
array_equivalent = my_hash.to_a

puts my_hash
puts array_equivalent

# Array to hash
# note, can convert from array to hash but the array has to be of a certain form
# array_1 does not work but something to array_2 does
array_1 = [1, 2, 3, 4]
array_2 = [[:first, 1], [:second, 2], [:third, 3]]

# hash_1_equivalent = array_1.to_h
hash_2_equivalent = array_2.to_h

# puts '1'
# puts array_1
# puts hash_1_equivalent

puts '2'
puts array_2
puts hash_2_equivalent

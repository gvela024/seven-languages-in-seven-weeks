line_counter = 0

my_array = [55, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

# This is weird. I feel like there should way that you can get
# the index too so that you can just mod to put the newline in.
my_array.each do |i|
  print i, "\t"

  if line_counter < 3
    line_counter += 1
  else
    line_counter = 0
    puts ''
  end
end

print "\n\n"

# p = puts, don't know if I like it but it's pretty sweet for quick stuff
# I think i saw the range operator before but it's pretty cool that you can make
# an array on the fly like that.
(1..16).each_slice(4) { |i| print i[0], "\t", i[1], "\t", i[2], "\t", i[3], "\n" }

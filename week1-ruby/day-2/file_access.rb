# Block access
File.open('./text.txt', 'r') do |f|
  f.each_line do |line|
    puts line
  end
end

# Non block access
f = File.open('./text.txt', 'r')
f.each_line do |line|
  puts line
end
f.close

# Using a block to access files is better because
# the file is automatically closed for you after the
# block is done

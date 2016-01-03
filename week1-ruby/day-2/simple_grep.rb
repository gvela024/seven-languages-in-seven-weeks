File.open(ARGV[0], 'r') do |f|
  f.each_line do |line|
     unless line.match(ARGV[1]) == nil
       puts line.match(ARGV[1])
     end
  end
end

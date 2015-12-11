File.open(ARGV[0], 'r') do |f|
  f.each_line do |line|
    line.match(ARGV[0])
  end
end

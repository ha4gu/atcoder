s = gets.chomp.split("")
n = gets.to_i
pairs = []
s.each do |one|
  s.each do |two|
    pairs << one+two
  end
end
puts pairs[n-1]

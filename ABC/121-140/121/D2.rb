debug = true
A, B = gets.split.map(&:to_i)
num = (A..B).to_a
current = 0
num.each do |n|
  current = current ^ n
end
puts current

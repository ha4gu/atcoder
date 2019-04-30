n = gets.to_i
line1 = gets.split.map(&:to_i)
line2 = gets.split.map(&:to_i)
candies = []
n.times do |i|
  candies << line1[0..i].inject(:+) + line2[i..-1].inject(:+)
end
puts candies.max

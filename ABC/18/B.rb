s = gets.chomp.split("")
n = gets.to_i
n.times do
  l, r = gets.split.map(&:to_i)
  s = s[0...l-1] + s[l-1..r-1].reverse + s[r..-1]
end
puts s.join

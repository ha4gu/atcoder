n = gets.to_i
s = gets.chomp.split("")
t = gets.chomp.split("")
shortest = 2 * n
n.times do |i|
  if s[i..-1] == t[0..(n-i-1)]
    shortest = n + i
    break
  end
end
puts shortest

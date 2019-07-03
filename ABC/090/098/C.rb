n = gets.to_i
s = gets.chomp.split("")

current = 0
see_w = s.map { |c|
  if c == "W"
    output = current
    current += 1
    output
  else
    current
  end
}

current = 0
see_e = s.reverse.map { |c|
  if c == "E"
    output = current
    current += 1
    output
  else
    current
  end
}.reverse

min = n
n.times do |i|
  min = [min, see_w[i] + see_e[i]].min
end
puts min

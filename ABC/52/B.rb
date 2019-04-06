_n = gets.to_i
s = gets.chomp.split('')
point = 0
ss = s.map { |c|
  if c == 'I'
    point += 1
    point
  elsif c == 'D'
    point -= 1
    point
  end
}
ss << 0
puts ss.max

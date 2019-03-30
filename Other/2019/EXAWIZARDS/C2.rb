debug = false
n, q = gets.split.map(&:to_i)
str = gets.chomp.split('').map { |s| [s, 1] }
p str if debug
q.times do
  t, d = gets.chomp.split(' ')
  if d == 'R'
    str.reverse!
  end
  str.each.with_index do |a, i|
    if a[0] == t
      unless i == 0
        str[i-1][1] = str[i-1][1] + a[1]
      end
      str[i][1] = 0
    end
  end
  if d == 'R'
    str.reverse!
  end
  p str if debug
end
puts if debug
p str if debug
puts str.inject(0) { |sum, a| sum + a[1] }

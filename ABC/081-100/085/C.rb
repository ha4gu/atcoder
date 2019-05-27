n, y = gets.split.map(&:to_i)
ans = false
(n+1).times do |a|
  (n+1).times do |b|
    c = n - (a + b)
    break if c < 0
    if 10000*a + 5000*b + 1000*c == y
      ans = "#{a} #{b} #{c}"
      break
    end
    break if ans
  end
  break if ans
end
puts ans ? ans : "-1 -1 -1"

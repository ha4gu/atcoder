n = gets.to_i
flag = false
1.step(3500) do |a|
  1.step(3500) do |b|
    if 4*a*b - n*b - n*a > 0 && n*a*b % (4*a*b - n*b - n*a) == 0
      c = n*a*b / (4*a*b - n*b - n*a)
      puts "#{a} #{b} #{c}"
      flag = true
    end
    break if flag
  end
  break if flag
end

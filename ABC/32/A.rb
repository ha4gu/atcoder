a, b, n = readlines.map(&:to_i)
(n..n*a*b).each do |num|
  if num%a==0 && num%b==0
    puts num
    break
  end
end

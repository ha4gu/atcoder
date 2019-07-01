a = gets.to_i
ans = 0
(1..(a+1)/2).each do |x|
  ans = x*(a-x) if x*(a-x) > ans
end
puts ans

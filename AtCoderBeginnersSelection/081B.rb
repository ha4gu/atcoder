gets # 1行目は捨てる
a = gets.split(" ").map(&:to_i)
count = 0
while a.all? { |x| x.even? } do
  a.map! { |x| x/2 }
  count += 1
end
puts count

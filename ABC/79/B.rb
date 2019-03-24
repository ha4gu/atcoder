N = gets.to_i
ls = [2, 1]
count = ls.size
until ls.size == N + 1
  ls << ls[count-2] + ls[count-1]
  count += 1
end
puts ls[-1]
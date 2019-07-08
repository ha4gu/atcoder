N = gets.to_i
current = N
ans = ""
i = 1
until current == 0
  # puts "current: #{current}, i: #{i}, 2**i: #{2**i}"
  # puts "割り切れるか?: #{current % (2 ** i) == 0}"
  if current % (2 ** i) == 0
    ans += "0"
  else
    current -= (-2) ** (i-1)
    ans += "1"
  end
  i += 1
  # break if i == 100
end
puts ans.empty? ? 0 : ans.reverse

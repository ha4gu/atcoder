n, x = gets.split.map(&:to_i)
prices = gets.split.map(&:to_i)
x = x.to_s(2)
gap = n - x.size
x = "0" * gap + x if gap != 0
sum = 0
x.split("").reverse.each_with_index do |item, i|
  if item == "1"
    sum += prices[i]
  end
end
puts sum

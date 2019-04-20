_n = gets.to_i
stones = gets.chomp.split("")
left_black = 0 # indexよりも左にある # の数
right_white = stones.count(".") # indexよりも右にある . の数
count = [left_black + right_white] # 数の合計
stones.each.with_index do |stone, i|
  if stone == "."
    right_white -= 1
  else # stone == "#"
    left_black += 1
  end
  count << left_black + right_white
end
puts count.min

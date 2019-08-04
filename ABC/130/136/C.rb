N = gets.to_i
heights = gets.split.map(&:to_i)
answer = true
previous = heights.shift
heights.each do |current|
  if previous < current
    # OKなパターン
    # 念の為、一つ下げておく（下げてもpreviousと同じかそれより上）
    previous = current - 1
  elsif previous == current
    # これもOKなパターン。
    #　高さはpreviousのまま。
  elsif previous == current - 1
    # 1減らして同じ高さになったパターン
    # この場合には高さはpreviousのまま
  else # previous > current - 1
    # Failedパターン
    answer = false
    break
  end
end
puts answer ? "Yes" : "No"

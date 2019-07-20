_n = gets.to_i
as = readlines.map(&:to_i)

lasts = [as.shift]
minimum = lasts.first
maximum = lasts.first

until as.empty?
  current_num = as.shift

  if current_num <= minimum
    lasts.unshift(current_num)
    minimum = current_num
  elsif maximum < current_num
    lasts[-1] = current_num
    maximum = current_num
  else # minimum < current_num <= maximum
    target_index = (0...lasts.size).bsearch { |i| current_num <= lasts[i] }
    target_index -= 1
    lasts[target_index] = current_num
    # indexが0だった場合にはminimumが変化
    minimum = current_num if target_index == 0
  end
  # p lasts
end
puts lasts.size

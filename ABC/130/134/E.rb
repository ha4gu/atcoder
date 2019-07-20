N = gets.to_i
as = readlines.map(&:to_i)
lasts = [as.shift]
until as.empty?
  current_num = as.shift
  flag = false
  lasts.each_with_index do |last, i|
    if last < current_num
      lasts[i] = current_num
      flag = true
      break
    end
  end # of lasts.each_with_index
  lasts << current_num unless flag
end
puts lasts.length

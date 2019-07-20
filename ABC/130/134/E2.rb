N = gets.to_i
as = readlines.map(&:to_i)
lasts = [as.shift]
minimum = lasts.first
until as.empty?
  current_num = as.shift
  if current_num <= minimum
    lasts << current_num
    minimum = current_num
  else
    lasts.sort!
    # p current_num
    temp = (0..lasts.size-1).bsearch { |i| lasts[i] >= current_num }
    if temp.nil?
      index = -1
    else
      index = temp - 1
    end
    lasts[index] = current_num
    minimum = lasts[0..1].min
  end
  # p lasts
end
# p lasts
puts lasts.size

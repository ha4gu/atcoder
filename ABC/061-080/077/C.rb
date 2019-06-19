n = gets.to_i
as = gets.split.map(&:to_i).sort
bs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i).sort

count = 0

bs.each do |b|
  a_index = as.bsearch_index { |a| a >= b }
  c_index = cs.bsearch_index { |c| b < c }
  if a_index.nil?
    a_count = as.size
  else
    a_count = as[0...a_index].size
  end

  if c_index.nil?
    next
  else
    c_count = cs[c_index..-1].size
    count += a_count * c_count
  end
end

puts count

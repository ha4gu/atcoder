def func(str)
  last_r = str.index("RL")
  children_num = str.length / 2
  array = Array.new(str.length) { 0 }
  [last_r, last_r+1].each do |i|
    if str.length.odd? && i.even?
      array[i] = children_num + 1
    else # str.length.even? || (str.length.odd? && i.odd?)
      array[i] = children_num
    end
  end
  array
end

rest = gets.chomp
answer = []

until rest.empty?
  end_index_of_r = rest.index("RL")
  next_index_of_r = rest.index("R", end_index_of_r+1)
  if next_index_of_r.nil?
    answer += func(rest)
    break
  else
    answer += func(rest[0...next_index_of_r])
    rest = rest[next_index_of_r..-1]
  end
end

puts answer.join(" ")

def func(str)
  index_of_last_r = str.index("RL")
  children_num = str.length / 2
  array = []
  str.length.times do |i|
    if i == index_of_last_r || i == index_of_last_r + 1
      if str.length.odd? && i.even?
        array << children_num + 1
      else # str.length.even? || (str.length.odd? && i.odd?)
        array << children_num
      end
    else
      array << 0
    end
  end
  array
end

S = gets.chomp
rest = S
answer = []

until rest.empty?
  end_index_of_r = rest.index("RL")
  next_index_of_r = rest[end_index_of_r+1..-1].index("R")
  if next_index_of_r.nil?
    answer += func(rest)
    break
  else
    end_index_of_l = end_index_of_r + next_index_of_r
    answer += func(rest[0..end_index_of_l])
    rest = rest[end_index_of_l+1..-1]
  end
end

puts answer.join(" ")

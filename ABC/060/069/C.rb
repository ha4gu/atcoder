n = gets.to_i
as = gets.split.map(&:to_i)
multiple_of_4 = 0
multiple_of_2 = 0
as.each do |a|
  if a % 4 == 0
    multiple_of_4 += 1
  elsif a % 2 ==0
    multiple_of_2 += 1
  end
end

can_save = multiple_of_4
can_save += 1 if multiple_of_2 == 0

# puts "[debug] 4の倍数: #{multiple_of_4}個、2の倍数: #{multiple_of_2}個、その他: #{n-multiple_of_4-multiple_of_2}個"
# puts "[debug] 4の倍数によってカバー可能な個数: #{can_save}個"
puts multiple_of_2 + multiple_of_4 + can_save >= n ? "Yes" : "No"

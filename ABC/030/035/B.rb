orders = gets.chomp.split("")
t = gets.to_i
position_x = 0
position_y = 0
count_question = 0
orders.each do |order|
  case order
  when "L"
    position_x -= 1
  when "R"
    position_x += 1
  when "U"
    position_y += 1
  when "D"
    position_y -= 1
  when "?"
    count_question += 1
  end
end

case t
when 1 # 最大値を取得
  puts position_x.abs + position_y.abs + count_question
when 2 # 最小値を取得
  m = position_x.abs + position_y.abs
  if m >= count_question
    puts m - count_question
  else
    puts (count_question - m) % 2
  end
end

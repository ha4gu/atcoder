def is_multiple_of_3?(array)
  sum = 0
  array.each do |line|
    sum += line.inject(:+)
  end
  sum % 3 == 0
end

def have_same_diffs?(array)
  diffs = []
  array.each do |line|
    diffs << [0, line[1] - line[0], line[2] - line[0]]
  end
  diffs[0] == diffs[1] && diffs[0] == diffs[2]
end

grid = []
3.times do
  grid << gets.split.map(&:to_i)
end

flag = true

# gridの9つの数字をすべて足し合わせると必ず3の倍数になっているはず。
flag = is_multiple_of_3?(grid) if flag

# 行ごとに見たとき、差分が3行とも一致しているはず
flag = have_same_diffs?(grid) if flag

# 列ごとに見たときも、差分が3行とも一致しているはず
flag = have_same_diffs?(grid.transpose) if flag

puts flag ? "Yes" : "No"

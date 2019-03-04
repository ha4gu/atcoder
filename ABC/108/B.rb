temp = gets.split.map(&:to_i)
points = [temp[0], temp[1]], [temp[2], temp[3]]

# 3点目を求める
move_x = points[1][0] - points[0][0] # x座標での移動量
move_y = points[1][1] - points[0][1] # y座標での移動量
points << [points[1][0] - move_y, points[1][1] + move_x]

# 4点目を求める
points << [points[0][0] - move_y, points[0][1] + move_x]

puts "#{points[2].join(' ')} #{points[3].join(' ')}"

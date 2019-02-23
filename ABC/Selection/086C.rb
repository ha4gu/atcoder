debug = 0

def can_move?(start, goal, time)
  distance_x = (goal[0] - start[0]).abs
  distance_y = (goal[1] - start[1]).abs
  if distance_x + distance_y > time
    false
  elsif distance_x + distance_y == time
    true
  else # distance_x + distance_y < time
    if (time - (distance_x + distance_y)) % 2 == 0
      true
    else
      false
    end
  end
end

# スタート地点は 0, 0
start = [0, 0]
time = 0
flag = true
N = gets.to_i
N.times do
  finish, x, y = gets.split.map(&:to_i)
  goal = [x, y]
  p goal if debug == 1
  if can_move?(start, goal, finish - time)
    start = goal # 今のgoal地点を次のstart地点とする
    time = finish # 今のgoal地点での時間を次の開始時間とする
  else
    flag = false
    break
  end
end
puts flag ? "Yes" : "No"

n, t = gets.split.map(&:to_i)
ts = gets.split.map(&:to_i)
sum = 0
previous = ts.shift # たぶんたいてい0
ts.each do |now|
  if previous + t >= now
    # まだお湯が出ている
    sum += now - previous
  else
    # お湯が途中で止まっている
    sum += t
  end
  previous = now
end
puts sum + t # 最後押してからはt秒間必ず流れる

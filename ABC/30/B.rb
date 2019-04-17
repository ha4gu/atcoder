h, m = gets.split.map(&:to_i)
angle_h = (h*60 + m) * (360/12/60.0) % 360
angle_m = m * (360/60)
angle = (angle_h - angle_m).abs
angle = 360 - angle if angle > 180
puts angle

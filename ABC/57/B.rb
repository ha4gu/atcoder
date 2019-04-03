n, m = gets.split.map(&:to_i)

students = []
n.times do
  a, b = gets.split.map(&:to_i)
  students << { x: a, y: b }
end

points = []
m.times do
  c, d = gets.split.map(&:to_i)
  points << { x: c, y: d}
end

students.each do |student|
  distance = []
  points.each do |point|
    distance << (point[:x] - student[:x]).abs + (point[:y] - student[:y]).abs
  end
  puts distance.index(distance.min)+1
end

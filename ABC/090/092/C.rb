$debug = false

n = gets.to_i
as = [0]
as += gets.split.map(&:to_i)
as << 0
p as if $debug

max_fare = 0
current = 0
as.each do |point|
  max_fare += (point - current).abs
  current = point
end
puts "max_fare: #{max_fare}" if $debug

as.each_with_index do |a, i|
  if i == 0 || i == n + 1
    next
  else
    puts max_fare - (as[i] - as[i -1]).abs - (as[i + 1] - as[i]).abs + (as[i+1] - as[i-1]).abs
  end
end

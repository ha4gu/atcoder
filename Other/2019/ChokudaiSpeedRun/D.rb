n = gets.to_i
larger = []
n.times do
  larger << gets.split.map(&:to_i).max
end
puts larger.inject(:+)

l, h = gets.split.map(&:to_i)
n = gets.to_i
n.times do
  a = gets.to_i
  if a > h
    puts "-1"
  else
    puts a > l ? "0" : l - a
  end
end

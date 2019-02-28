N, T = gets.split.map(&:to_i)
cs = []
N.times.each do
  temp = []
  temp = gets.split.map(&:to_i)
  if temp[1] <= T
    cs << temp[0]
  end
end
if cs.empty?
  puts "TLE"
else
  puts cs.min
end

N = gets.to_i
ps = gets.split.map(&:to_i)
ascending = (1..N).to_a
count = 0
N.times do |i|
  count += 1 unless ps[i] == ascending[i]
end

if count == 0 || count == 2
  puts "YES"
else
  puts "NO"
end

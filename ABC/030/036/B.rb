n = gets.to_i
array = []
n.times do
  array << gets.chomp.split('')
end
array.transpose.each do |line|
  puts line.reverse.join('')
end

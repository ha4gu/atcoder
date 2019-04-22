table = []
4.times do
  table << gets.chomp.split(" ")
end
table.reverse_each do |line|
  puts line.reverse.join(" ")
end

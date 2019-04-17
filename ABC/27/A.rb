len = gets.split.map(&:to_i).sort
if len.count(len[0])%2 == 1
  puts len[0]
else
  puts len[2]
end

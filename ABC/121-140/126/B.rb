s = gets.chomp.split("")
former = (s[0] + s[1]).to_i
latter = (s[2] + s[3]).to_i
if former.between?(1, 12) && latter.between?(1, 12)
  puts "AMBIGUOUS"
elsif former.between?(1, 12)
  puts "MMYY"
elsif latter.between?(1, 12)
  puts "YYMM"
else
  puts "NA"
end

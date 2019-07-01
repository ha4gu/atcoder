S = gets.chomp
if S[0] == 'A' && S[2..-2].count("C") == 1
  temp = S.sub(/^A/,"").sub(/C/,"")
  if temp == temp.downcase
    puts "AC"
  else
    puts "WA"
  end
else
  puts "WA"
end

s = gets.chomp.split("")
k = gets.to_i
if k > s.size
  puts "0"
elsif k == s.size
  puts "1"
else
  candidates = []
  (0..s.size-k).each do |i|
    candidates << s[i..i+k-1]
  end
  puts candidates.uniq.size
end

K = gets.chomp.to_i
A, B = gets.split.map(&:to_i)

if A % K == 0 || B % K == 0
  puts "OK"
else
  puts (B / K * K).between?(A, B) ? "OK" : "NG"
end

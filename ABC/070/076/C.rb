s = gets.chomp.split("")
t = gets.chomp.split("")
flag1 = false
(s.length - t.length).step(0, -1) do |i|
  s_part = s[i, t.length]
  flag2 = true
  t.each_with_index do |c, j|
    unless [c, "?"].include?(s_part[j])
      flag2 = false
      break
    end
  end
  if flag2
    s[i, t.length] = t
    flag1 = true
    break
  end
end

if flag1
  puts s.map { |e| e == "?" ? "a" : e }.join("")
else
  puts "UNRESTORABLE"
end

s = gets.chomp.split("")
t = gets.chomp.split("")
n = s.size
flag = true
n.times do |i|
  if s[i] == t[i]
    next
  elsif s[i] == "@"
    unless "atcoder".include?(t[i])
      flag = false
      break
    end
  elsif t[i] == "@"
    unless "atcoder".include?(s[i])
      flag = false
      break
    end
  else
    flag = false
    break
  end
end
puts flag ? "You can win" : "You will lose"

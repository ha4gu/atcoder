n = gets.to_i
s = n%60
n /= 60
m = n%60
h = n/60
puts sprintf "%02d:%02d:%02d", h, m, s

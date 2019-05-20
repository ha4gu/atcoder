a, b, x = gets.split.map(&:to_i)
puts b/x - (a%x==0 ? a/x-1 : a/x)

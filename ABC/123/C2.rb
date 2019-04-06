n = gets.to_i
neck = readlines.map(&:to_i).min
count = n%neck==0 ? n/neck : n/neck+1
puts count+4

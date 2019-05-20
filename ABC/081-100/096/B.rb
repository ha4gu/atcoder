num = gets.split.map(&:to_i)
K = gets.to_i
num.sort!.reverse!
max = num.shift
puts num.inject(:+) + max * (2**K)

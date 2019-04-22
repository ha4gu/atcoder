n = gets.to_i
tribonacci = [0, 0, 1]
i = 0
until tribonacci.size >= n
  tribonacci << tribonacci[i..i+2].inject(:+)%10007
  i += 1
end
puts tribonacci[n-1]

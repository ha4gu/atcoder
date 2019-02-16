a, b = gets.split(" ").map(&:to_i)
a * b % 2 == 0 ? puts("Even") : puts("Odd")

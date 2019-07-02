def digits_sum(number)
  if !number.kind_of?(Integer)
    # 整数以外の場合
    puts "[ERROR] digits_sum: argument must be an INTEGER"
    -1
  elsif number < 0
    # 負の整数の場合
    puts "[ERROR] digits_sum: argument must be a POSITIVE integer"
    -1
  else
    # 0もしくは正の整数の場合
    sum = 0
    while number > 0 do
      sum += number % 10
      number /= 10
    end
    sum
  end
end

n = gets.chomp
m = n.split("").map.with_index { |num, i|
  if i == 0
    num.to_i - 1
  else
    9
  end
}.join("").to_i
puts [digits_sum(m), digits_sum(n.to_i)].max

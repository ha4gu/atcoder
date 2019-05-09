n = gets.to_i
min = n

# 入力された正整数の各桁の和を求める関数
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

(1..(n+1)/2).each do |a|
  b = n - a
  sum = digits_sum(a) + digits_sum(b)
  min = sum if sum < min
end

puts min

# 入力された数値の各桁の和を求める関数
def digit_sum(num)
  sum = 0
  while num > 0 do
    sum += num % 10
    num /= 10
  end
  sum
end

n = gets.to_i
puts digit_sum(n)

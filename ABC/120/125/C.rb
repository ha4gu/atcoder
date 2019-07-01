n = gets.to_i
as = gets.split.map(&:to_i)
divisors = []

# 各数字の約数を取得して配列に格納する
as.each do |a|
  (1..a).each do |b|
    divisors << b if a % b == 0
  end
end

divisors.uniq.sort.reverse_each do |num|
  if divisors.count(num) >= n-1
    puts num
    break
  end
end

# うーん、これじゃ間違いなくTLEだよなぁ

# うわー、数列に出てくる数字がなぜか0〜9だと勘違いしてコード書いてた。
# 大幅に書き換えないとダメじゃんコレ…

_n = gets.to_i
count_odd = Array.new(10) { 0 }
count_even = Array.new(10) { 0 }
gets.split.map(&:to_i).each do |num|
  if num.even?
    count_even[num] += 1
  else
    count_odd[num] += 1
  end
end
count_even.map!.with_index { |c, i| {num: i, count: c } }.sort! { |a, b| b[:count] <=> a[:count] }
count_odd.map!.with_index  { |c, i| {num: i, count: c } }.sort! { |a, b| b[:count] <=> a[:count] }

first_even = count_even.shift
first_odd = count_odd.shift
sum_even = count_even.inject(0) { |sum, item| sum + item[:count] }
sum_odd = count_odd.inject(0) { |sum, item| sum + item[:count] }
if first_even[:num] != first_odd[:num]
  puts sum_even + sum_odd
else
  # 1つめを採用した場合と2つめを採用した場合とでsumを取り、
  # 1x2, 2x1の両パターンについて結果を出して少ない方を出力する。
  _second_even = count_even.shift
  _second_odd = count_odd.shift
  sum_even_second = count_even.inject(0) { |sum, item| sum + item[:count] } + first_even[:count]
  sum_odd_second = count_odd.inject(0) { |sum, item| sum + item[:count] } + first_odd[:count]
  puts [sum_even + sum_odd_second, sum_even_second + sum_odd].min
end
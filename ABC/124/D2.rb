n, k = gets.split.map(&:to_i)
s = gets.chomp.split('').map(&:to_i)

zero_index = []
one_flag = true
s.each.with_index do |person, i|
  if person == 1
    one_flag = true
  else # person == 0
    zero_index << i if one_flag
    one_flag = false
  end
end

# 『0と1から成る配列』、『1に変える最初の先頭0のインデックス』、
# 『1に変えていい0のブロック数』を受け取って、変化させた後の配列を返す関数 mod_s
def mod_s(array, first, c)
  count = c
  flag = true
  array.map.with_index { |e, i|
    if count > 0 && i >= first && e == 0
      flag = true
      1
    elsif count > 0 && i >= first && e == 1 && flag
      count -= 1
      flag = false
      e
    else
      e
    end
  }
end

# p mod_s(s, 5, 3)


# 渡された配列のうち、最も長い1の連続数を返す関数 longest_one
def longest_one(array)
  count = 0
  array.map { |e|
    if e == 1
      count += 1
    else # e == 0
      count = 0
    end
    count
  }.max
end

if zero_index.empty?
  puts n
elsif k >= zero_index.size
  puts n
else
  # p zero_index #=> [3, 5, 7, 10]
  longests = []
  (0..(zero_index.size - k)).each do |i|
    str = mod_s(s.dup, zero_index[i], k)
    # p str
    longests << longest_one(str)
  end
  # p longests
  puts longests.max
end

debug = true
A, B = gets.split.map(&:to_i)
num = (A..B).to_a
max = num[-1].to_s(2).length
p num if debug
num.map! { |a| "0"*max+a.to_s(2) } # 2進数の文字列に変換する
current = num[0]
num.shift
p current if debug
p num if debug
puts if debug

num.each do |n|
  n

  (1..max).each do |i|
    current[-i] = (current[-i].to_i ^ n[-i].to_i).to_s(2)
  end

  p current if debug
end
puts current.to_i(2)

# 500円玉をA枚
# 100円玉をB枚
#  50円玉をC枚
# これで合計をちょうどX円にする
# ⇒ 何通りの方法があるか?

A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
X = gets.chomp.to_i

count = 0

(A+1).times.each do |a|
  (B+1).times.each do |b|
    (C+1).times.each do |c|
      count += 1 if 500*a + 100*b + 50*c == X
    end
  end
end

puts count
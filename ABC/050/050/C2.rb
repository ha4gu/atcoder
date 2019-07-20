N = gets.to_i
As = gets.split.map(&:to_i)
answer = nil
correct_pattern = true

# ありえるパターンかどうかのチェック
array = As.dup.sort
if N.even?
  # Nが偶数の場合、1, 1, 3, 3, ....., N-1, N-1となる
  num = 1
  until num > N - 1
    2.times do
      correct_pattern = false unless array.shift == num
    end
    if correct_pattern
      num += 2
    else
      break
    end
  end
  correct_pattern = false unless array.empty?
else
  # Nが奇数の場合、0, 2, 2, 4, 4, ...., N-1, N-1となる
  correct_pattern = false unless array.shift == 0
  num = 2
  until num > N - 1
    2.times do
      correct_pattern = false unless array.shift == num
    end
    if correct_pattern
      num += 2
    else
      break
    end
  end
  correct_pattern = false unless array.empty?
end

if correct_pattern
  # パターンとして適切なので、並び順を数え上げる
  pair_num = N / 2 # 0が1つ混じっていても影響なし
  # 各数字のペアに対して並べ方が2種類ある
  answer = 2 ** pair_num % (10 ** 9 + 7)
else
  # ありえないパターンなので、0が答えとなる
  answer = 0
end

puts answer

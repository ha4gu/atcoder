N = gets.to_i
As = gets.split.map(&:to_i)
answer = nil

# ありえるパターンかどうかのチェック
correct = [] # 正しいパターンを格納するための配列
if N.even?
  # Nが偶数の場合、1, 1, 3, 3, ....., N-1, N-1となる
  1.step(N-1, 2) do |num|
    correct += [num, num]
  end
else
  # Nが奇数の場合、0, 2, 2, 4, 4, ...., N-1, N-1となる
  0.step(N-1, 2) do |num|
    correct += [num, num]
  end
  correct.shift # 最初の0を1つにするため
end

if As.sort == correct
  # パターンとして適切なので、並び順を数え上げる
  pair_num = correct.length / 2 # 0が1つ混じっていても影響なし
  answer = 2 ** pair_num # 各数字のペアに対して並べ方が2種類ある
else
  # ありえないパターンなので、0が答えとなる
  answer = 0
end

puts answer

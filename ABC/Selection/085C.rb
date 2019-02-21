debug = 0

N, Y = gets.split.map(&:to_i)
# 合計N枚のお札で、Y円を作る組み合わせはあるか?

# 使いうる諭吉の最大枚数 max_yukichi を出しておく
max_yukichi = Y / 10000

puts "max_yukichi: #{max_yukichi}" if debug >= 1

# 最終的に出力する配列の初期化、組み合わせが見つかった場合にはこれを上書きする
possible = [-1, -1, -1]

puts "start loop" if debug >= 1
puts "" if debug >= 1

# その最大枚数から0枚までを順に評価する
(0..max_yukichi).to_a.reverse.each do |current_yukichi|
  # この時点においてcurrent_yukichi枚のお札を使っているので、
  # 残りのお札の枚数は
  rest_bill_a = N - current_yukichi
  # 残りの金額は
  rest_money_a = Y - current_yukichi*10000
  # となっている。
  puts "current_yukichi: #{current_yukichi}" if debug >= 1
  puts "rest_money_a: #{rest_money_a}" if debug >= 1

  # 以降で使えるのは5000円札と1000円札だが、
  # 残りの枚数を全て5000円札で考えたとしても残額に達しない場合には
  # カウントしてもムダなのでbreakさせる。
  break if rest_money_a > rest_bill_a*5000

  # 使いうる一葉の最大枚数 max_ichiyo を出しておく
  max_ichiyo = rest_money_a / 5000

  # その最大枚数から0枚までを順に評価する
  (0..max_ichiyo).to_a.reverse.each do |current_ichiyo|
    # この時点において更にcurrent_ichiyo枚のお札を使っているので、
    # 残りのお札の枚数は
    rest_bill_b = rest_bill_a - current_ichiyo
    # 残りの金額は
    rest_money_b = rest_money_a - current_ichiyo*5000
    # となっている。

    # 帳尻があったらその組み合わせを格納してbreakさせる
    if rest_bill_b*1000 == rest_money_b
      possible = [current_yukichi, current_ichiyo, rest_bill_b]
      break
    end
  end

  # もし組み合わせを発見している場合にはbreakさせる
  break unless possible == [-1, -1, -1]

  puts "" if debug >= 1
end

# 結果を出力
puts possible.join(" ")

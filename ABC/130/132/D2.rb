def calc_combination_string(n, m)
  if !n.kind_of?(Integer) || !m.kind_of?(Integer) || n < m || n <= 0 || m <= 0
    nil
  elsif m == 1 || n - m == 1
    "#{n}"
  elsif n == m
    "1"
  else
    m = [(n - m), m].min

    # denominator: 分母
    denominator = "#{n}"
    (n-1).step(n-m+1, -1) do |num|
      denominator += "*#{num}"
    end

    # numerator: 分子
    numerator = "#{m}"
    until m == 1
      m -= 1
      numerator += "*#{m}"
    end

    # 出力
    "(" + denominator + ")/(" + numerator + ")"
  end
end

def calc_combination(n, m)
  if !n.kind_of?(Integer) || !m.kind_of?(Integer) || n < m || n <= 0 || m <= 0
    nil
  elsif m == 1 || n - m == 1
    n
  elsif n == m
    1
  else
    eval calc_combination_string(n, m)
  end
end

N, K = gets.split.map(&:to_i)
1.step(K, 1) do |i|
  if i == 1
    puts N - K + 1
  elsif K == 2
    # TODO: 何らかの例外対応
  else # K >= 3, i >= 2
    # 青グループの分割
    # 青いボールが全て並んでいるところに仕切りを入れて、青いボールをi個のグループに分けるイメージ。
    # 必要な仕切りの数は i - 1 個。
    # 青いボールは K 個あるので、その隙間は K - 1 個。
    # つまり K - 1 個から i - 1 個を選ぶ組み合わせ数。これを first とする。
    # p first = calc_combination(K - 1, i - 1)

    # 残りの赤の配分
    # これで赤いボールを入れられる箇所の数が決まった。すなわち仕切りの箇所と両端なので、i + 1 個ある。
    # 赤いボールは N - K 個あって、これらの隙間と両端合わせると N - K + 1個
    # ここに i + 1 - 1 = i 個の仕切りを入れるイメージ
    # p N - K + 1
    # p (1..(N - K + 1)).inject(:*)
    # p (1..(N - K + 1 - i)).inject(:*)
    # p (1..i).inject(:*)
    # p second = (1..(N - K + 1)).inject(:*) / (1..(N - K + 1 - i)).inject(:*) / (1..i).inject(:*)
    # p second = calc_combination(N - K + 1, i)

    # p first * second % (10 ** 9 + 7)

    # puts calc_combination(K - 1, i - 1) \
    #     * calc_combination(N - K + 1, i) \
    #     % (10 ** 9 + 7)

    puts eval "(" + "#{calc_combination_string(K - 1, i - 1)}" + ")" +
        "*(" "#{calc_combination(N - K + 1, i)}" + ")" + \
        "%(10**9+7)"
  end
end

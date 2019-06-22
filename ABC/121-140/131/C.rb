# A以上B以下の整数の個数から、Cの倍数の個数とDの倍数の個数を引いて最後にCとDの公倍数の個数を加える。
a, b, c, d = gets.split.map(&:to_i)

# A以上B以下の個数 all
all = b - a + 1

# B以下のCの倍数の個数
c_multiple_b_ika = b / c
# A未満のCの倍数の個数
c_multiple_a_miman = (a - 1) / c

# B以下のDの倍数の個数
d_multiple_b_ika = b / d
# A未満のDの倍数の個数
d_multiple_a_miman = (a - 1) / d

# CとDの最小公倍数
def gcd_of_two(a, b)
  small, large = [a, b].sort
  if small == 0
    return large
  else
    gcd_of_two(small, large % small)
  end
end

def lcm_of_two(a, b)
  gcd = gcd_of_two(a, b)
  return a * b / gcd
end

lcm = lcm_of_two(c, d)

# B以下の公倍数の個数
lcm_multiple_b_ika = b / lcm
# A未満の公倍数の個数
lcm_multiple_a_miman = (a - 1) / lcm

# 個数計算
puts all - (c_multiple_b_ika - c_multiple_a_miman) - (d_multiple_b_ika - d_multiple_a_miman) + (lcm_multiple_b_ika - lcm_multiple_a_miman)

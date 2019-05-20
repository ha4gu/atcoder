n, k = gets.split.map(&:to_i)
trios = []

# a % k == x である場合、 b % k == c % k == (k - x)、
# なぜなら (a+b)%k == (a+c)%k == 0だから。
# あれ、でも (b+c)%k == 0でもあるんだから、
# x == 0 か、あるいは x == k/2じゃないとダメじゃね？
# しかも k/2ってことは、これはkが偶数のときのみ有効ってことか。
# kが奇数ならx==0の場合のみ、
# kが偶数ならx==0の場合とx==k/2の場合の2種類。
# これらを考えればいいってことか。

s = 1
while s*k <= n
  a = s*k
  t = 1
  while t*k <= n
    b = t*k
    u = 1
    while u*k <= n
      c = u*k
      trios << [a, b, c]
      u += 1
    end
    t += 1
  end
  s += 1
end
p trios.size

if k.even?
  s = 0
  while s*k <= n
    a = s*k + k/2
    t = 0
    while t*k <= n
      b = t*k + k/2
      u = 0
      while u*k <= n
        c = u*k + k/2
        trios << [a, b, c]
        u += 1
      end
      t += 1
    end
    s += 1
  end
end
p trios.size

# これでもTLEかー、コードもっとまともにしないとダメだな

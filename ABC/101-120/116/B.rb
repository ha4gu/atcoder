s = gets.to_i

def f(n)
  if n % 2 == 0
    n / 2
  else
    3 * n + 1
  end
end

a = [s]
n = 1
until a.count(a[n-1]) == 2
  a << f(a[n-1])
  n += 1
end
puts n

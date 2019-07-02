MOD = 10 ** 9 + 7
dogs, monkeys = gets.split.map(&:to_i)
if (dogs - monkeys).abs > 1
  count = 0
else
  count = (1..dogs).inject(1) { |a, b| a * b % MOD } * (1..monkeys).inject(1) { |a, b| a * b % MOD } % MOD
  count = count * 2 % MOD if dogs == monkeys
end
puts count

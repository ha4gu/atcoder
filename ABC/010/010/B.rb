# 花びらの枚数がnであるとき、
# パターン1: 好き、嫌いの場合: n%2 != 0 ならばOK
# パターン2: 好き、嫌い、大好きの場合: n%3 != 2 ならばOK

# 条件を満たす花びらの枚数群
passes = (1..9).to_a.map { |num| (num%2==0 || num%3==2) ? nil : num }.compact.reverse
_n = gets.to_i
sum = 0
gets.split.map(&:to_i).each do |flower|
  passes.each do |pass|
    if flower >= pass
      sum += flower - pass
      break
    end
  end
end
puts sum

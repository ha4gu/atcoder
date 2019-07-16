require 'prime'

N = gets.to_i
hash = {}

2.step(N) do |i|
  Prime.prime_division(i).each do |array|
    factor = array[0]
    count = array[1]
    if hash[factor].nil?
      hash[factor] = count
    else
      hash[factor] += count
    end
  end
end

answer = 1
hash.each do |key, value|
  answer = answer * (value + 1) % (10**9 + 7)
end
puts answer

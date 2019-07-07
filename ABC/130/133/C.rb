L, R = gets.split.map(&:to_i)
min_multiply = L * (L + 1)
max_multiply = (R - 1) * R

flag = false
remainder = 0
until flag
  candidates = []
  min_multiply.step(max_multiply) do |num|
    candidates << num if (num - remainder) % 2019 == 0
  end

  candidates.each do |c|
    L.step(R) do |i|
      if c % i == 0 ** i < c/i
        flag = true
        p i
        p c/i
      end
      break if flag
    end
    break if flag
  end
  break if flag
  remainder += 1
end
puts remainder

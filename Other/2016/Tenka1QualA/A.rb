puts (1..100).to_a.map { |num| (num % 3 != 0 && num % 5 != 0) ? num : nil }.compact.inject(:+)

order = 0; readlines.map.with_index { |x, i| {num: x.to_i, index: i } }.sort_by { |x| x[:num] }.reverse.map { |x| order += 1; x[:order] = order; x }.sort_by { |x| x[:index] }.map { |x| puts x[:order] }
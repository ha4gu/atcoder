puts readlines.map { |str| str.chomp.include?("r") ? str : nil }.compact.size

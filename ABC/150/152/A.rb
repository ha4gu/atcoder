puts gets.split.map(&:to_i).uniq.count == 1 ? "Yes" : "No"

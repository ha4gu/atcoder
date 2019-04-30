n, a, b = gets.split.map(&:to_i)
if b == 0
  puts 0
else
  anniversaries = gets.split.map(&:to_i)
  days = ["D"] + (1..n).to_a.map { |i| anniversaries.include?(i) ? "D" : "P" } + ["D"]
  sum = 0
  no_dates = 0
  # p days
  days.map { |day|
    if day == "P"
      no_dates += 1
    else
      # p no_dates - no_dates / a
      sum += no_dates - no_dates / a
      no_dates = 0
    end
  }
  # puts
  p sum
end

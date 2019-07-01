n, q = gets.split.map(&:to_i)
previous_is_a = false
count = 0
s = gets.chomp.split("").map { |char|
  if char == "A"
    previous_is_a = true
    count
  elsif char == "C" && previous_is_a
    previous_is_a = false
    count += 1
  else
    previous_is_a = false
    count
  end
}
q.times do
  l, r = gets.split.map(&:to_i)
  puts s[r-1] - s[l-1]
end

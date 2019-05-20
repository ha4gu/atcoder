n = gets.to_i
min_score = n
(1..(n+1)/2).each do |a|
  score = ((n/a) - a).abs + n%a
  min_score = score if score < min_score
end
puts min_score

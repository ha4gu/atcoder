N, A, B = gets.split.map(&:to_i)
array = []
(1..N).each do |num|
  array << num if num.to_s.split('').map(&:to_i).inject(:+).between?(A, B)
end
puts array.inject(:+)

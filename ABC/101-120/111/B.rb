N = gets.to_i
(1..9).each do |i|
  num = [i*111, (i+1)*111]
  if num[0] >= N
    puts num[0]
    break
  elsif num[0] < N && N <= num[1]
    puts num[1]
    break
  end
end

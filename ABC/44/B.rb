w = gets.chomp.split('')
flag = true
w.each do |c|
  if w.count(c).odd?
    flag = false
    break
  end
end
puts flag ? 'Yes' : 'No'
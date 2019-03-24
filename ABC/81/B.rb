_N = gets.to_i
as = gets.split.map(&:to_i)
def func(array, count)
  flag = true
  array.each do |num|
    flag = false if num.odd?
  end
  if flag
    func(array.map { |x| x / 2 }, count + 1)
  else
    puts count
  end
end
func(as, 0)

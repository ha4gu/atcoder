_n = gets
ds = gets.split.map(&:to_i)
_m = gets
ts = gets.split.map(&:to_i)
flag = true
ts.each do |t|
  i = ds.index(t)
  if i.nil?
    flag = false
    break
  else
    ds.delete_at(i)
  end
end
puts flag ? "YES" : "NO"

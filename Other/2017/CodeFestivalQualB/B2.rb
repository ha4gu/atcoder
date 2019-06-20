def compress_array(array)
  hash = {}
  array.map { |e|
    if hash[e].nil?
      hash[e] = 1
    else
      hash[e] += 1
    end
  }
  hash
end

_n = gets
ds = gets.split.map(&:to_i)
_m = gets
ts = gets.split.map(&:to_i)
flag = true
hash_ds = compress_array(ds)
hash_ts = compress_array(ts)

hash_ts.each do |key, value|
  if hash_ds[key].nil? || value > hash_ds[key]
    flag = false
    break
  end
end
puts flag ? "YES" : "NO"

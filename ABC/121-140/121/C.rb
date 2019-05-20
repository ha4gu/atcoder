debug = false
N, M = gets.split.map(&:to_i)
shop = []
N.times do
  shop << gets.split.map(&:to_i)
end
puts "shop: #{shop}" if debug
limit = M
sum = 0

# 一番価格が低い店から、limitまたは店ごとの上限まで購入し、
# 購入後のlimit, shopsと、かかった金額を配列で返す。
def purchase(limit, shops)
  lowest = shops.min_by{ |array| array[0] }
  lowest_index = shops.index(lowest)
  if limit >= lowest[1]
    num_purchase = lowest[1]
    limit = limit - lowest[1]
  else
    num_purchase = limit
    limit = 0
  end
  shops.delete_at(lowest_index)
  price = lowest[0] * num_purchase
  return [limit, shops, price]
end

while limit > 0
  limit, shops, price = purchase(limit, shop)
  puts "current limit: #{limit}" if debug
  puts "used price: #{price}" if debug
  sum += price
end
puts sum

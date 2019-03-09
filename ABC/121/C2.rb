debug = false
N, M = gets.split.map(&:to_i)
shops = []
N.times do
  shops << gets.split.map(&:to_i)
end
shops.sort_by! { |a| a[0].to_i } # 価格が低い方から並べ替える
puts "shops: #{shops}" if debug
limit = M
sum = 0
shops.each do |shop|
  if limit >= shop[1]
    num_purchase = shop[1]
    limit = limit - shop[1]
  else
    num_purchase = limit
    limit = 0
  end
  sum += shop[0] * num_purchase
end
puts sum

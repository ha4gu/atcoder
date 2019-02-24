N = gets.to_i
btc_rate = 380000.0
sum = 0.0
N.times.each do
  price, currency = gets.chomp.split
  price = price.to_f
  if currency == "JPY"
    sum += price
  else # currency = "BTC"
    sum += price * btc_rate
  end
end
puts sum

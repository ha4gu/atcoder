m = gets.to_i
vv = ""
if m > 70*1000
  vv = "89"
elsif m >= 35*1000
  vv = ((m/1000-30)/5+80).to_s
elsif m >= 6*1000
  vv = (m/1000+50).to_s
elsif m >= 100
  vv = sprintf "%02d", (m*10/1000)
else
  vv = "00"
end
puts vv

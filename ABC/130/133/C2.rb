L, R = gets.split.map(&:to_i)

# LからRの間に3の倍数があるか
# have_multiple_of_3 = L % 3 == 0 || R % 3 == 0 || R/3 - L/3 > 0
have_multiple_of_3 = ((R / 3) * 3).between?(L, R)

# LからRの間に673の倍数があるか
# have_multiple_of_673 = L % 673 == 0 || R % 673 == 0 || R/673 - L/673 > 0
have_multiple_of_673 = ((R / 673) * 673).between?(L, R)

# LからRの間に2019の倍数があるか
# have_multiple_of_2019 = L % 2019 == 0 || R % 2019 == 0 || R/2019 - L/2019 > 0
have_multiple_of_2019 = ((R / 2019) * 2019).between?(L, R)

if have_multiple_of_2019 || (have_multiple_of_673 && have_multiple_of_3)
  puts 0
else
  puts L * (L + 1) % 2019
end

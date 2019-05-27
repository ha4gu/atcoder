s = gets.chomp.split("")
c_index = nil
f_index = nil

c_index = s.index("C")
if ! c_index.nil?
  f_index = s[c_index+1..-1].index("F")
end
puts f_index.nil? ? "No" : "Yes"

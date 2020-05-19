n = gets.to_i
s, t = gets.chomp.split()

n.times do |i|
  print s[i]+t[i]
end
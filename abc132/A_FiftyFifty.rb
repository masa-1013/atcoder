s = gets.chomp.split('')
a = s.uniq[0]
b = s.uniq[-1]

puts s.count(a) == 2 && s.count(b) == 2 ? "Yes" : "No"
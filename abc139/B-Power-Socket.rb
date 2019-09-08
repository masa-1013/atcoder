input = gets.split(' ').map(&:to_f)
A = input[0]
B = input[1]

puts ((B-1) / (A-1)).ceil
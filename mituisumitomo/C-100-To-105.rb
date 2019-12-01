X = gets.to_i
quo, rem = X.divmod(100)

if quo == 0
  puts 0
  exit
end

a, b = rem.divmod(5)

a += 1 if b > 0

puts quo >= a ? "1" : "0"
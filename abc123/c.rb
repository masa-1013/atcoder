n = gets.to_i
move = []

5.times do
  move << gets.to_i
end

min = move.min

if min < n
  puts 4 + (n/min.to_f).ceil
else
  puts 5
end
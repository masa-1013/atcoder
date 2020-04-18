n = gets.to_i
sum = 0
(1..n).each do |i|
  next if i % 3 == 0 || i % 5 == 0
  sum += i
end
puts sum
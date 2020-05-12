n, k, m = gets.split().map(&:to_i)
a = gets.split().map(&:to_i)

goal = n*m
nowPoint = a.inject(&:+)
needPoint = goal - nowPoint
if needPoint < 0
  puts 0
elsif needPoint > k
  puts -1
else
  puts needPoint
end
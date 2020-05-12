n = gets.to_i
p = gets.split().map(&:to_i)

num = 1000000
ans = 0

p.each do |i|
  num = [num, i].min
  next if i != num
  ans += 1
end

puts ans
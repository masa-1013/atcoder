N = gets.to_i
ans = 0
(1..N).each do |n|
  next if n.to_s.length % 2 == 0
  ans += 1
end

puts ans
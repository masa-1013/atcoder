N, K, Q = gets.chomp.split().map(&:to_i)

ans = Array.new(N, 0)

Q.times do |i|
  ans[gets.to_i - 1] += 1
end


N.times do |i|
  value = K - (Q - ans[i])
  puts value > 0 ? "Yes" : "No"
end
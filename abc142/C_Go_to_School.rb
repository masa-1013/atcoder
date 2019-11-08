N = gets.to_i
A = gets.split().map(&:to_i)
ans = []

N.times do |i|
  order = A[i]
  ans[order - 1] = i + 1
end

puts ans.join(" ")
N, M = 6,1
a = [3]



dp = []

10.times do
  dp.push(0)
end

dp[0] = 1

(1..N).each do |i|
  i1 = 0
  i2 = 0
  unless a.include?(i-1)
    i1 = dp[i-1]
  end
  if i > 1
    unless a.include?(i-2)
      i2 = dp[i-2]
    end
  end
  dp[i] = i1 + i2
end

puts dp[N-1] % 1000000007
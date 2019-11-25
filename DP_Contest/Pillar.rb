N = gets.to_i
a = gets.split().map(&:to_i)

dp = []

inf = 1000000000

100010.times do 
  dp.push(inf)
end

dp[0] = 0

def chmin(a, b)
  if a > b
    return b
  end
  return a
end

(1..N-1).each do |i|
  dp[i] = chmin(dp[i], dp[i-1] + (a[i]-a[i-1]).abs)
  if i > 1
    dp[i] = chmin(dp[i], dp[i-2] + (a[i]-a[i-2]).abs)
  end
end

puts dp[N-1]
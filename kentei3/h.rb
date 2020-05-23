n, l = gets.split().map(&:to_i)
xn = gets.split().map(&:to_i)
t = gets.split().map(&:to_i)
harlde = {}
xn.each do |i|
  harlde[i] = true
end

dp = Array.new(l+1, 10000000000)
dp[0] = 0

(1..l).each do |i|
  if i >= 4
    if harlde.has_key?(i)
      dp[i] = [dp[i], dp[i-1] + t[0] + t[2], dp[i-2] + t[1] + t[0] + t[2], dp[i-4] + t[0] + t[1]*3 + t[2]].min
    else
      dp[i] = [dp[i], dp[i-1] + t[0]  , dp[i-2] + t[1] + t[0] , dp[i-4] + t[0] + t[1]*3].min
    end
  elsif i >= 2
    if harlde.has_key?(i)
      dp[i] = [dp[i], dp[i-1] + t[0] + t[2], dp[i-2] + t[1] + t[0] + t[2]].min
    else
      dp[i] = [dp[i], dp[i-1] + t[0], dp[i-2] + t[1] + t[0]].min
    end
  else
    if harlde.has_key?(i)
      dp[i] = [dp[i], dp[i-1] + t[0] + t[2]].min
    else
      dp[i] = [dp[i], dp[i-1] + t[0]].min
    end
  end
end

#途中の考慮
dp[l] = [dp[l], dp[l-3] + t[0]*0.5 + t[1]*2.5].min
dp[l] = [dp[l], dp[l-2] + t[0]*0.5 + t[1]*1.5].min
dp[l] = [dp[l], dp[l-1] + t[0]*0.5 + t[1]*0.5].min
puts dp[l].to_i
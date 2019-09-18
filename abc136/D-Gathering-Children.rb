S = gets.chomp
n = S.length
ans = Array.new(S.length, 0)
cnt = 0
n.times do |i|
  if S[i] == 'R'
    cnt += 1
  else
    ans[i] += cnt/2
    ans[i-1] += (cnt+1)/2
    cnt = 0
  end
end
cnt = 0
(n-1).downto(0) do |i|
  if S[i] == 'L'
    cnt += 1
  else
    ans[i] += cnt/2
    ans[i+1] += (cnt+1)/2
    cnt = 0
  end
end

puts ans.join(' ')


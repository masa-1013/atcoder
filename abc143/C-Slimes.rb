N = gets.to_i
S = gets
ans = 0
tmp = "zzz"

S.chars do |s|
  unless tmp == s
    ans += 1
    tmp = s
  end
end

puts ans-1
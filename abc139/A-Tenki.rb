S = gets
T = gets
result = 0

for index in 0..2 do
  if S[index] == T[index]
    result += 1
  end
end

puts result
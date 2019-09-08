N = gets.to_i
H = gets.split(' ').map(&:to_i)
result = 0
tmp = 0

for index in 1..N-1 do
  if H[index-1] >= H[index]
    tmp += 1
  else
    result = [result, tmp].max
    tmp = 0
  end
end

puts [result, tmp].max


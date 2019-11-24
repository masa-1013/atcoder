A, B, X = gets.split().map(&:to_i)

right = 1000000000
left = 0
ans = 0

while(left <= right)
  num = (left + right)/2
  value = A * num + B * num.to_s.length
  if value > X
    right = num - 1
  else
    ans = [ans, num].max
    break if left == right 
    left = num + 1
  end
end

puts ans
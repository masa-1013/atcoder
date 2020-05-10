n, k = gets.split().map(&:to_i)
p = gets.split().map(&:to_i)
array = []
tmp = 0
ans = 0

p.each_with_index do |item, index|
  tmp += (item + 1)/2.0
  array[index] = tmp
end

ans = array[k-1]

(k..n-1).each do |i|
  ans = [ans, array[i] - array[i-k]].max
end

puts ans

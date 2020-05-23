n, m, c = gets.split().map(&:to_i)
b = gets.split().map(&:to_i)
a = []

n.times do |i|
  a[i] = gets.split().map(&:to_i)
end

ans = 0

a.each do |i|
  sum = c
  i.each_with_index do |j, index|
    sum += j*b[index]
  end
  ans += 1 if sum > 0
end

puts ans
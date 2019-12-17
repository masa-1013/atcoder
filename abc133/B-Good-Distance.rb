N, D = gets.split().map(&:to_i)
array = Array.new(N)

N.times do |i|
  array[i] = gets.split().map(&:to_i)
end

ans = 0

array.combination(2) do |a, b|
  sum = 0
  D.times do |i|
    sum += (a[i] - b[i])**2
  end
  ans += 1 if sum**0.5 == (sum**0.5).to_i
end

puts ans
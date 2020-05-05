n = gets.to_i
a = gets.split().map(&:to_i)

sum = 0

[*0..n-1].combination(2).each do |i, j|
  sum += 1 if (i - j).abs == a[i]+a[j]
end

puts sum
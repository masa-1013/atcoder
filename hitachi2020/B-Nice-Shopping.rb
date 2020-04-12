A, B, M = gets.chomp.split().map(&:to_i)
a = gets.chomp.split().map(&:to_i)
b = gets.chomp.split().map(&:to_i)
comb = []
ans = 10000000

M.times do
  comb << gets.chomp.split().map(&:to_i)
end

comb.each do |x, y, c|
  ans = [a[x-1] + b[y-1] - c, ans].min
end

puts [ans, a.min + b.min].min
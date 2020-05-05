n, a, b = gets.split().map(&:to_i)
tmp = n.divmod(a+b)

if tmp[1] >= a
  puts tmp[0] * a + a
else
  puts tmp[0] * a + tmp[1]
end
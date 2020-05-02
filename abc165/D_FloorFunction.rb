a, b, n = gets.split().map(&:to_i)

def cal(a, b, x)
  return (a * x / b).floor - a * (x/b).floor
end

if b > n
  puts cal(a, b, n)
else
  puts cal(a, b, b-1)
end
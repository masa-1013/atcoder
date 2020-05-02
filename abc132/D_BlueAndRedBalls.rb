n, k = gets.split().map(&:to_i)

ans = 0


def comb(x, y)
  return [*1..x].combination(y).to_a.size
end

(1..k).each do |i|
  s = comb(n-k, i-1) + 2*comb(n-k, i) + comb(n-k, i+1)
  ans += s*comb(n, i)
end

puts ans
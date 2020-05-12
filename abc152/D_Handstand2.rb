n = gets.to_i

def pair(x)
  a = x%10
  while x!=0
    b = x
    x /= 10
  end
  return [a, b]
end

freq = {}

(1..n).each do |i|
  p = pair(i)
  freq[p] = 0 if !freq.has_key?(p)
  freq[p] += 1
end

ans = 0

(1..n).each do |i|
  p = pair(i)
  q = [p[1], p[0]]
  ans += freq[q] if freq.has_key?(q)
end

puts ans
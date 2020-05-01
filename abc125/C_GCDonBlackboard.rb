n = gets.to_i
a = gets.split().map(&:to_i)

left = Array.new(n)
right = Array.new(n)

left[0] = a[0]
right[-1] = a[-1]

(n-1).times do |i|
  left[i+1] = left[i].gcd(a[i+1])
end

(n-1).times do |i|
  right[n-2-i] = right[n-1-i].gcd(a[n-2-i])
end

ans = []

n.times do |i|
  if i == 0
    ans << right[i+1]
  elsif i == n-1
    ans << left[i-1]
  else
    ans << left[i-1].gcd(right[i+1])
  end
end

puts ans.max
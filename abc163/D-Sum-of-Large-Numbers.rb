n, k = gets.split().map(&:to_i)
numbers = [*0..n]
min = numbers[0, k].inject(&:+)
max = numbers.reverse.slice(0, k).inject(:+)
ans = (max - min + 1)

(k+1..n+1).each do |i|
  min += numbers[i-1]
  max += numbers[-i]
  ans += (max - min + 1)
end

puts ans % (10**9 + 7)
n = gets.to_i

ans = 1000000000

(1..n-1).each do |i|
  other = n - i
  ans = [ans, i.to_s.split('').map(&:to_i).inject(&:+) + other.to_s.split('').map(&:to_i).inject(&:+)].min
end

puts ans
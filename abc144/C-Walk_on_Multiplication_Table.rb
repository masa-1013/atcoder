N = gets.to_i
ans = 100000000000000

(1..(N**0.5).ceil).each do |i|
  if N % i == 0
    ans = [ans, N/i + i].min
  end
end

puts ans-2

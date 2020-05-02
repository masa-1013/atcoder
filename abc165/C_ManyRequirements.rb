n, m, q = gets.chomp.split().map(&:to_i)
array = []
q.times do 
  array << gets.chomp.split.map(&:to_i)
end

ans = 0

[*1..m].repeated_combination(n).to_a.each do |comb|
  sum = 0
  array.each do |a, b, c, d|
    sum += d if (comb[b-1] - comb[a-1]) == c
  end
  ans = [ans, sum].max
end

puts ans


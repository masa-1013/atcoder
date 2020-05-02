n, m, q = "4 6 10".split().map(&:to_i)
array = [[2, 4, 1, 86568], [1, 4, 0, 90629], [2, 3, 0, 90310], [3, 4, 1, 29211], [3, 4, 3, 78537], [3, 4, 2, 8580], [1, 2, 1, 96263], [1, 4, 2, 2156], [1, 2, 0, 94325], [1, 4, 3, 94328]]




ans = 0

[*1..m].combination(n).to_a.each do |comb|
  sum = 0
  array.each do |a, b, c, d|
    sum += d if comb[b-1] - comb[a-1] == c
  end
  ans = [ans, sum].max
end

puts ans


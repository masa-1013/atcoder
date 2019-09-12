K, X = gets.split.map(&:to_i)
K -= 1
puts [*(X-K..X+K)].join(' ')

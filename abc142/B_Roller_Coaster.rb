N, K = gets.split().map(&:to_i)
h = gets.split().map(&:to_i)

puts h.select { |item| item >= K }.count
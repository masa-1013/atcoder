h, n = gets.split().map(&:to_i)
a = gets.split().inject(0){ |sum, num| sum += num.to_i }

puts a >= h ? "Yes" : "No"
N = gets.to_i
A = gets.split(' ').map(&:to_f)
sum = 0

A.each do |num|
  sum += 1/num
end

puts 1/sum
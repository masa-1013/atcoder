N = gets.to_i
B = gets.split(' ').map(&:to_i)
anser = Array.new(N, 1000000)
index = 0

B.each do |num| 
  anser[index] = [anser[index], num].min
  anser[index+1] = [anser[index+1], num].min
  index += 1
end

puts anser.inject(:+)

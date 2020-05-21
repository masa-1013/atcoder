antena = []

5.times do
  antena << gets.to_i
end

k = gets.to_i

antena.combination(2).to_a.each do |i, j|
  if (i-j).abs > k
    puts ":("
    exit
  end
end

puts "Yay!"
n = gets.to_i
a = gets.split().map(&:to_i)

a.each do |i|
  next if i % 2 == 1
  next if i % 3 == 0 || i % 5 == 0
  puts "DENIED"
  exit
end

puts "APPROVED"
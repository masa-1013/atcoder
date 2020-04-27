n = gets.to_i
items = []

n.times do
  items << gets.chomp
end

puts items.uniq.size
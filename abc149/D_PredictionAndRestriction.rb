n, k = gets.split().map(&:to_i)
r, s, p = gets.split().map(&:to_i)
t = gets.chomp.split('')

hand = {}
hand["r"] = p
hand["s"] = r
hand["p"] = s
array = []

t.each_with_index do |i, index|
  if index < k
    array << hand[i]
    next
  end
  if t[index-k] == i && array[index-k] != 0
    array << 0
  else
    array << hand[i]
  end
end

puts array.inject(&:+)
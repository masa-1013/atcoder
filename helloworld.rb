n, k = "7 1".split().map(&:to_i)
r, s, p = "100 10 1".split().map(&:to_i)
t = "ssssppr".chomp.split('')

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
  if t[index-2] == i && array[index-2] != 0
    array << 0
  else
    array << hand[i]
  end
end

puts array.inject(&:+)
N = gets.to_i
p = gets.split.map(&:to_i)
p_sort = p.sort
cnt = 0

N.times do |i|
  cnt += 1 unless p[i] == p_sort[i]
end

puts cnt == 2 || cnt == 0 ? "YES" : "NO"
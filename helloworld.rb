N, M = 3,3
if N == 1 && M == 0
  puts 0
  exit
end
array = ["1 7","3 2","1 7"]
ans = Array.new(N)

array = array.uniq.map do |i|
  i.split().map(&:to_i)
end

array.each do |i, j|
  if i == 1 && j == 0 && N != 1
    puts -1
    exit
  end
  if ans[i-1]
    puts -1
    exit
  end
  ans[i-1] = j
end

ans = ans.map do |i|
  i = 0 unless i
end

puts ans.join().to_i
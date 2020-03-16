N, M = gets.split().map(&:to_i)
if N == 1 && M == 0
  puts 0
  exit
end
array = []
ans = Array.new(N)

M.times do 
  array.push(gets)
end

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

ans[0] = 1 unless ans[0] 

ans = ans.map do |i|
  i ? i : 0
end

puts ans.join().to_i
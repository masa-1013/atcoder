n, m = gets.split().map(&:to_i)
h = gets.split().map(&:to_i)
ab = []
graph = Array.new(n).map{Array.new()}

m.times do 
  ab << gets.split().map(&:to_i)
end

ab.each do |a, b|
  graph[a-1] << b
  graph[b-1] << a
end

sum = 0

graph.each_with_index do |tenbou, index|
  myH = h[index]
  flag = true
  tenbou.each do |i|
    next if myH > h[i-1]
    flag = false
  end
  sum += 1 if flag
end

puts sum
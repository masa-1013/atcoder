n, m = gets.split().map(&:to_i)
ab = Array.new(m)
graph = Array.new(n+1).map{Array.new()}
dist = Array.new(n+1, -1)
queue = []

m.times do |i|
  ab[i] = gets.split().map(&:to_i)
end

ab.each do |a, b|
  graph[a] << b
  graph[b] << a
end

dist[1] = 1
queue.push(1)

while !queue.empty?()
  v = queue.shift

  graph[v].each do |i|
    next if dist[i] != -1
    dist[i] = v
    queue.push(i)
  end
end

if dist.count(-1) > 1
  puts 'No'
else
  puts 'Yes'
  (2..n).each do |i|
    puts dist[i]
  end
end


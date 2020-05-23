n, m, q = gets.split().map(&:to_i)
graph = Array.new(n+1).map{Array.new()}
query = []

m.times do
  u, v = gets.split().map(&:to_i)
  graph[u] << v
  graph[v] << u
end

color = gets.split().map(&:to_i)
color.unshift(0)

q.times do 
  query << gets.split().map(&:to_i)
end

query.each do |array|
  top = array[1]
  puts color[top]
  if array.size == 2
    graph[top].each do |i|
      color[i] = color[top]
    end
  else
    color[top] = array[2]
  end
end

N, Q = gets.split.map(&:to_i)
$graph = Array.new(N) { Array.new() }
$ans = Array.new(N, 0)

(N-1).times do 
  a, b = gets.split.map { |n|  (n.to_i) - 1 } 
  $graph[a] << b
  $graph[b] << a
end

Q.times do
  p, x = gets.split.map(&:to_i)
  p -= 1
  $ans[p] += x
end

def dfs(v, p=-1)
  $graph[v].each do |u|
    next if u == p
    $ans[u] += $ans[v]
    dfs(u, v)
  end
end

dfs(0)

puts $ans.join(' ') 


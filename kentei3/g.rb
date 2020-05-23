n, x, y = gets.split().map(&:to_i)
dx = [1,0,-1,1,-1,0]
dy = [1,1,1,0,0,-1]
field = Array.new(1001).map{Array.new(1001, ".")}

field[500][500] = "S"
field[y+500][x+500] = "G"

n.times do
  ix, iy = gets.split().map(&:to_i)
  field[iy+500][ix+500] = "#"
end

dist = Array.new(1001).map{Array.new(1001, -1)}
que = [] 
que << [500,500]
dist[500][500] = 0

while !que.empty?
  v = que.shift
  vx = v[0]
  vy = v[1]
  6.times do |i|
    nx = dx[i] + vx
    ny = dy[i] + vy
    next if nx < 0 || nx > 1000 || ny < 0 || ny > 1000
    next if dist[ny][nx] != -1
    next if field[ny][nx] == "#"
    if field[ny][nx] == "G"
      puts dist[vy][vx] + 1
      exit
    end
    dist[ny][nx] = dist[vy][vx] + 1
    que << [nx, ny]
  end
end

puts -1
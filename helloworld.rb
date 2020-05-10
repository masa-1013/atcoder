n, k = "6 727202214173249351".split().map(&:to_i)
a = "6 5 2 5 3 2".split().map(&:to_i)

move = []
seen = Array.new(n, false)

nowPos = 0
move << 1

while !seen[nowPos]
  seen[nowPos] = true
  move << a[nowPos]
  nowPos = a[nowPos] - 1
end

circlePos = move.index(move[-1])
move.pop
once = circlePos
cal = (k-once) % (move.size-once)

puts move[once + cal]
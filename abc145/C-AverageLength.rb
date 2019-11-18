N = gets.to_i
XY = []

N.times do 
  XY.push(gets.split().map(&:to_i))
end

sum = 0
count = 0

XY.permutation(N) do |array|
  array.each_cons(2) do |(x1, y1), (x2, y2)|
    sum += ((x1 - x2)**2 + (y1 - y2)**2) ** 0.5
  end
  count += 1
end

puts sum/count
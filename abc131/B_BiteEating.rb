n, l = gets.split().map(&:to_i)
apples = []

(1..n).each do |i|
  apples << l+i-1
end

rm = 1000000

apples.each do |i|
  if rm.abs > i.abs
    rm = i
  end
end

puts apples.inject(&:+) - rm
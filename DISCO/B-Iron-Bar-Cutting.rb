N = gets.to_i
A = gets.split().map(&:to_i)


sum = A.inject(&:+)

min = 100000000000

left = 0

(0..N-1).each do |i|
  left += A[i]
  if left >= sum / 2
    right = sum - left
    min = [min, left-right].min
    left -= A[i]
    right = sum - left
    min = [min, right-left].min
    break
  end
  next
end

puts min




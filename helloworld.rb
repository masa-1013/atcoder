N = 12
A = "100 104 102 105 103 103 101 105 104 102 104 101".split().map(&:to_i)
sum = A.inject(&:+)

min = 100000000000

left = 0

(0..N-2).each do |i|
  left += A[i]
  if left >= sum / 2
    right = sum - left
    if left > right
      min = [min, left-right].min
    else
      min = [min, right-left].min
    end
    break
  end
  next
end

puts min
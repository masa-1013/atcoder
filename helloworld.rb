N = 4
S = "123123"

ans = 0

1000.times do |i|
  num = "%03d" % i
  tmp = S.dup
  index = tmp.index(num[0])

  if index == nil
    next
  else
    tmp.slice!(index)
  end
  index = tmp.index(num[1])
  if index == nil
    next
  else
    tmp.slice!(index)
  end
  index = tmp.index(num[2])
  if index == nil
    next
  else
    tmp.slice!(index)
  end
  puts num
  ans += 1
end

puts ans
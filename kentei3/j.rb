n, m = gets.split().map(&:to_i)
am = gets.split().map(&:to_i)

kids = Array.new(n+1, 0)
kids.unshift(1000000005)
left = 0
right = 1
zero = 1
am.each do |p|
  if right - left <= 1
    kids[right] = p
    puts right
    right += 1
    zero += 1
    next
  end
  while right - left != 1
    n = (right+left)/2
    if p > kids[n]
      right = n
    else
      left = n 
    end
  end
  if left == kids.size-2
    puts -1
  else
    if kids[right] == 0
      kids[right] = p
      puts right
      zero += 1
    else
      kids[right] = p
      puts right
    end
  end
  left = 0
  right = zero
end


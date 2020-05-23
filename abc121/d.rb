a, b = gets.split().map(&:to_i)


def convert(small, big)
  digit = [small.size, big.size].max
  big = big.to_s(2).rjust(digit, '0')
  small = small.to_s(2).rjust(digit, '0')
  ans = []
  big.size.times do |i|
    if big[i] == small[i]
      ans << "0"
    else
      ans << "1"
    end 
  end
  return ans.join('').to_i(2)
end

if b-a == 1
  puts convert(a, b)
  exit
end

def fun(a, b)
  return convert(a, b) if b-a == 1
  if b % 2 == 0
    dif = b - a
    if (dif/2)%2 == 0
      return convert(0, b)
    else
      return convert(1, b)
    end
  else
    return 0
  end
end

puts convert(fun(0, a-1), fun(0, b))
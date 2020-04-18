k = 2
$memo = {}
memogcd = {}
sum = 0

def yakusu(n)
  return $memo[n.to_s] if $memo.has_key?(n.to_s)
  ans = []
  (1..n).each do |i|
    ans << i if n % i == 0
  end
  $memo[n.to_s] = ans
  ans
end

(1..k).each do |i|
  (1..k).each do |j|
    (1..k).each do |k|
      key = [i,j,k].uniq.sort.to_s
      if memogcd.has_key?(key)
        sum += memogcd[key]
        next
      end
      array = yakusu(i) + yakusu(j) + yakusu(k)
      gcd = array.select{ |e| array.count(e) == 3 }.max
      sum += gcd
      memogcd[key] = gcd
    end
  end
end

puts sum
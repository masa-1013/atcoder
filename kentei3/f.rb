n = gets.to_i
an = []

n.times do
  an << gets.chomp.split('')
end

ans = []

(n/2.0).ceil.times do |i|
  f = i
  e = (n-1)-i
  flag = false
  an[f].each do |j|
    an[e].each do |k|
      if j == k
        ans[f] = j
        ans[e] = k
        flag = true
        break
      end
    end
    break if flag
  end
  unless flag
    puts -1
    exit
  end
end

puts ans.join() 
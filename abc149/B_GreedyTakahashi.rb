a, b, k = gets.split().map(&:to_i)
if a >= k
  puts "#{a-k} #{b}"
elsif a+b <= k
  puts "#{0} #{0}"
else
  puts "#{0} #{b-(k-a)}"
end
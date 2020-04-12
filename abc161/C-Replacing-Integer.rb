n, k = gets.split().map(&:to_i)
if n <= (n-k).abs
  puts n
  exit
end
mult = n/k
puts [(n-k*mult).abs, (n-k*(mult+1)).abs].min
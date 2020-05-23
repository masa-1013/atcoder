a, r, n = gets.split().map(&:to_i)
if a * r**(n-1) > 10**9
  puts "large"
else
  puts a * r**(n-1)
end
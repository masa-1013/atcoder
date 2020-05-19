a, b = gets.split().map(&:to_i)
if a >= 13
  puts b
elsif a < 6
  puts 0
else
  puts b/2
end
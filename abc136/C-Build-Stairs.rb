N = gets.to_i
ary = gets.split.map(&:to_i).reverse
 
 
(0..N-2).each do |i|
  next if ary[i] >= ary[i+1]
  ary[i+1] -= 1
  next if ary[i] == ary[i+1]
  puts "No"
  exit
end
 
puts "Yes"
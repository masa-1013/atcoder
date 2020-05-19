k = gets.to_i
s = gets.chomp

if s.size <= k
  puts s
  exit
end

puts s[0..k-1] + "..."
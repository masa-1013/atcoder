S = gets.chomp

sum = 0

S.length.times do |i|
  break if i >= S.length-1-i
  sum += 1 unless S[i] == S[S.length-1-i]
end

puts sum
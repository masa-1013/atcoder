N = gets.to_i
S = gets.chomp

s = S[0..N/2-1]

puts s*2 == S ? "Yes" : "No"


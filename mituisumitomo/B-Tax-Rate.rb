N = gets.to_i

(1..N).each do |value|
  if (value * 1.08).floor == N
    puts value
    exit
  end
end

puts ":("
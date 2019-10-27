N = gets.to_i

(1..9).each do |i|
  (1..9).each do |j|
    if i * j == N 
      puts "Yes"
      exit
    end
  end
end

puts "No"
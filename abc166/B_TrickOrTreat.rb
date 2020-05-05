n, k = gets.split().map(&:to_i)
array = Array.new(n, 0)

k.times do 
  d = gets.to_i
  gets.split().map(&:to_i).each do |i|
    array[i-1] = 1
  end
end

puts array.count(0)
food = []

5.times do
  food << gets.to_i
end

min = 10
sum = 0

food.each do |n|
  sum += (n/10.0).ceil * 10
  while n/10 != 0
    n %= 10
  end
  next if n == 0
  min = [min, n].min
end

puts sum - (10-min)

n, m = gets.split().map(&:to_i)
ab = []

n.times do |i|
  ab[i] = gets.split().map(&:to_i)
end

ab.sort_by! {|a| a[0]}

money = 0
number = 0

ab.each do |a, b|
  if number + b < m
    number += b
    money += a*b
  else
    money +=  a*(m - number)
    break
  end
end

puts money
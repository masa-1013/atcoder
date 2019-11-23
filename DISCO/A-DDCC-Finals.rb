x, y = gets.split().map(&:to_i)

money = [0, 300000, 200000, 100000]

plus = 0

plus = 400000 if x == 1 and y == 1

x = 0 if x > 3
y = 0 if y > 3

puts plus + money[x] + money[y]
n, m = gets.split().map(&:to_i)
a = gets.split().map(&:to_i).inject(&:+)

if n < a
  puts "-1"
else
  puts n - a
end
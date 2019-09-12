N = gets.to_i
value = gets.split(' ').map(&:to_f).sort

(N-1).times do |i|
  a = value.delete_at(0)
  b = value.delete_at(0)
  value << (a+b)/2
  value = value.sort
end

puts value
w, h , x, y = gets.split().map(&:to_i)
if w/2.0 == x && h/2.0 == y
  puts "#{(w*h)/2.0} 1"
else
  puts "#{(w*h)/2.0} 0"
end

x = "33".to_i
m = {}

120.times do |i|
  a5 = i**5
  m[a5] = i
  b5 = x - a5
  if b5 >= 0
    if m[b5]
      puts "#{i} #{-m[b5]}"
      break
    end
  else
    if m[-b5]
      puts "#{a} #{m[-b5]}"
      break
    end
  end
end
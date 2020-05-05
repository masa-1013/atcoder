s = gets.chomp.split('')
q = gets.to_i
isReversed = false

q.times do 
  input = gets.chomp.split()
  if input[0] == "2"
    if input[1] == "1" && !isReversed || input[1] == "2" && isReversed
      s.unshift input[2]
    else
      s.push input[2]
    end
  else
    isReversed = !isReversed
  end
end

puts isReversed ? s.reverse.join('') : s.join('')
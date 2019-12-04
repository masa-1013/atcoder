S = gets.chomp.split('')

S.each_with_index do |char, i|
  if (i+1) % 2 == 0
    if char == "R"
      puts "No"
      exit
    end
  else
    if char == "L"
      puts "No"
      exit
    end
  end
end

puts "Yes"
n, m = 3, 2
a = [380, 19, 1]
vote = a.inject(&:+)
border = vote / (4*m)

a.sort.reverse.slice(0, m).each do |num|
  if num < border
    puts "No"
    exit
  end
end

puts "Yes"
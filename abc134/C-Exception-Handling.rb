N = gets.to_i
array = []
N.times do 
  array.push(gets.to_i)
end

sortArray = array.sort.reverse

first, second = sortArray[0], sortArray[1]

array.each do |item|
  if item == first
    puts second
  else
    puts first
  end
end
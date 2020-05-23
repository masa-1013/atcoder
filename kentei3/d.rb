n = gets.to_i
s = []
zero = ["###", "#.#", "#.#", "#.#", "###"]
one = [".#.", "##.", ".#.", ".#.", "###"]
two = ["###", "..#", "###", "#..", "###"]
three = ["###", "..#", "###", "..#", "###"]
four = ["#.#", "#.#", "###", "..#", "..#"]
five = ["###", "#..", "###", "..#", "###"]
six = ["###", "#..", "###", "#.#", "###"]
seven = ["###", "..#", "..#", "..#", "..#"]
eight = ["###", "#.#", "###", "#.#", "###"]
nine = ["###", "#.#", "###", "..#", "###"]

numbers = [zero, one, two, three, four, five, six, seven, eight, nine]

5.times do |i|
  s << gets.chomp.split('')
end

ans = Array.new(n).map{Array.new()}

s.each do |array|
  array.fill do |index|
    if index % 4 == 0
      "0"
    else
      array[index]
    end
  end
  array.join('').split('0').each_with_index do |str, index|
    next if index == 0
    ans[index-1] << str
  end
end

output = []

ans.each do |array|
  numbers.each_with_index do |number, index|
    if array == number
      output << index
      break
    end
  end
end

puts output.join()


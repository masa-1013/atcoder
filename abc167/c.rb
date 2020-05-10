n, m, x = gets.split().map(&:to_i)
books = Array.new(n).map{Array.new(m)}

n.times do |i|
  books[i] = gets.split().map(&:to_i)
end

ans = 100000000

(1..2**n-1).each do |i|
  sum = 0
  abi = Array.new(m, 0)
  i.to_s(2).rjust(n, '0').split('').reverse.each_with_index do |bit, index|
    next if bit == "0"
    book = books[index]
    sum += book[0]
    book.each_with_index do |a, j|
      next if j == 0
      abi[j-1] += a
    end 
  end
  if abi.all?{|num| num >= x}
    ans = [ans, sum].min
  end
end

puts ans == 100000000 ? -1 : ans 
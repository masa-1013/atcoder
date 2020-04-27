s = gets.chomp
strArray = s.split('')
n = strArray.size-1
ans = 0

array = []

(0..n).each do |st|
  (st+1..n).each do |en|
    str = strArray[st..en].join()
    ans += 1 if str.to_i % 2019 == 0
  end
end

puts ans
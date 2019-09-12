N = gets.to_i
str =[]
N.times do
  str << gets.split('').sort.join()
end

hash = {}
ans = 0

str.each do |s|
  if hash.has_key?(s)
    ans += hash[s]
    hash[s] += 1
  else
    hash[s] = 1
  end
end

puts ans


